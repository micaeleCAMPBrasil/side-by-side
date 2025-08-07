// ignore_for_file: file_names
import 'package:provider/provider.dart';
import 'package:side_by_side/components/modulos/AModuloCapaComponent.dart';
import 'package:side_by_side/components/modulos/AModuloDescrptionComponent.dart';
import 'package:side_by_side/components/modulos/AModuloDiscussionComponent.dart';
import 'package:side_by_side/components/modulos/AModuloListLicao.dart';
import 'package:side_by_side/components/modulos/AModuloProgressLicaoComponent.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class ADetalheModulosScreen extends StatefulWidget {
  int index;
  Modulos modulo;
  ADetalheModulosScreen({super.key, required this.modulo, required this.index});

  @override
  State<ADetalheModulosScreen> createState() => _ADetalheModulosScreenState();
}

class _ADetalheModulosScreenState extends State<ADetalheModulosScreen> {
  List<Widget> reelsPages = [];

  bool isloading = false;
  int selectedindex = 0;
  int? pageindex;

  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  final IFuncoes repository = IFuncoesPHP(client: HttpClient());

  late PageController mypagecontroller;

  void ontapselection(int index) {
    debugPrint(index.toString());
    mypagecontroller.jumpToPage(selectedindex + 1);
  }

  bool isLiked = false;
  bool isSaved = false;

  @override
  void initState() {
    super.initState();

    debugPrint('selected ${widget.index}');
    /*widget.index != null
        ? mypagecontroller.jumpToPage(widget.index!)
        : mypagecontroller.jumpToPage(0);*/

    reelsPages = <Widget>[
      AModuloCapaComponent(modulo: widget.modulo),
      AModuloDescrptionComponent(modulo: widget.modulo),
      AModuloProgressLicaoComponent(modulo: widget.modulo),
      AModuloListLicao(modulo: widget.modulo),
      AModuloDiscussionComponent(modulo: widget.modulo),
    ];

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Usuario usuario =
          Provider.of<UsuarioProvider>(context, listen: false).getUsuario;

      List<Modulos> listFavepository = await repository.getListModulosFavs(
        usuario.uid,
      );
      List<Modulos> listSavedpository = await repository.getListModulosSaves(
        usuario.uid,
      );

      debugPrint('total modulos faves ${listFavepository.length}');

      List<Modulos> moduloFavs =
          listFavepository
              .where((element) => element.id == widget.modulo.id)
              .toList();
      List<Modulos> moduloSaveds =
          listSavedpository
              .where((element) => element.id == widget.modulo.id)
              .toList();

      setState(() {
        isLiked = moduloFavs.isEmpty ? false : true;
        isSaved = moduloSaveds.isEmpty ? false : true;

        storePg.isFavoriteModulo.value = moduloFavs.isEmpty ? false : true;
        storePg.isSaveModulo.value = moduloSaveds.isEmpty ? false : true;
        mypagecontroller = PageController(initialPage: widget.index);
        pageindex = widget.index == '' || widget.index == 0 ? 1 : 4;
        selectedindex = widget.index == '' || widget.index == 0 ? 0 : 3;

        isloading = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Usuario usuario =
        Provider.of<UsuarioProvider>(context, listen: false).getUsuario;

    return isloading
        ? Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              //top 3 elements

              //main content
              PageView(
                controller: mypagecontroller,
                onPageChanged: (value) {
                  setState(() {
                    selectedindex = value;
                    pageindex = value + 1;
                  });
                },
                children: reelsPages.map((e) => Container(child: e)).toList(),
              ),

              // Titulo
              Padding(
                padding: EdgeInsets.only(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  top: 16.0 + MediaQuery.of(context).viewPadding.top,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: appColorPrimary,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,
                          color: appColorPrimaryLight,
                        ),
                        onPressed: () {
                          finish(context);
                        },
                      ),
                    ),
                    const Text(
                      "Módulos",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: appColorPrimary,
                              child: IconButton(
                                icon: Icon(
                                  isLiked
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color:
                                      isLiked
                                          ? Colors.red
                                          : appColorPrimaryLight,
                                ),
                                onPressed: () async {
                                  setState(() {
                                    isLiked = !isLiked;
                                  });
                                  storePg.updateFavoriteModulo(
                                    usuario.uid,
                                    widget.modulo.id.toString(),
                                    isLiked,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: appColorPrimary,
                              child: IconButton(
                                icon: Icon(
                                  isSaved
                                      ? Icons.bookmark
                                      : Icons.bookmark_border_outlined,
                                  color:
                                      isSaved
                                          ? appColorPrimaryDarkLight
                                          : appColorPrimaryLight,
                                ),
                                onPressed: () async {
                                  setState(() {
                                    isSaved = !isSaved;
                                  });
                                  storePg.updateSavedModulo(
                                    usuario.uid,
                                    widget.modulo.id.toString(),
                                    isSaved,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 50,
                        height: 30,
                        color: appColorPrimary,
                        child: Center(
                          child: InkWell(
                            child: Text(
                              '$pageindex/${reelsPages.length}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //last two button
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (selectedindex == 0) {
                                    Navigator.pop(context);
                                  } else {
                                    mypagecontroller.jumpToPage(
                                      selectedindex - 1,
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: appColorPrimary,
                                ),
                                child: const Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: appColorPrimaryLight,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Spacer(),
                        const SizedBox(width: 64),
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  debugPrint('selected $selectedindex');
                                  if (selectedindex == 4) {
                                    Navigator.pop(context);
                                  } else {
                                    mypagecontroller.jumpToPage(
                                      selectedindex + 1,
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: appColorPrimary,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: appColorPrimaryLight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
        : Center(child: CircularProgressIndicator(color: appColorPrimary));
  }
}
