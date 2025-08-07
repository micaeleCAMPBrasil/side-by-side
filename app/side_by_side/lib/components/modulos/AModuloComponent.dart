// ignore_for_file: file_names
import 'package:provider/provider.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/modulos/ADetalheModulosScreen.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class AModuloComponent extends StatefulWidget {
  int index;
  ScrollPhysics? physics;
  AModuloComponent({super.key, this.index = 0, this.physics});

  @override
  State<AModuloComponent> createState() => _AModuloComponentState();
}

class _AModuloComponentState extends State<AModuloComponent> {
  bool isloading = false;
  List<Modulos> modulos = [];

  final IFuncoes repository = IFuncoesPHP(client: HttpClient());

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Usuario usuario =
          Provider.of<UsuarioProvider>(context, listen: false).getUsuario;
      List<Modulos> listFavepository = await repository.getListModulosFavs(
        usuario.uid,
      );
      List<Modulos> listSavedpository = await repository.getListModulosSaves(
        usuario.uid,
      );
      if (widget.index == 1) {
        setState(() {
          modulos = getModulos();
          isloading = true;
        });
      } else if (widget.index == 2) {
        setState(() {
          modulos = listFavepository;
          isloading = true;
        });
      } else if (widget.index == 3) {
        setState(() {
          modulos = listSavedpository;
          isloading = true;
        });
      } else {
        setState(() {
          modulos = getModulos();
          isloading = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (1 / 1.5),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          physics: widget.physics ?? const NeverScrollableScrollPhysics(),
          itemCount: modulos.length,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 0,
            bottom: 16,
          ),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    /*Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AModulosScreen(
                            modulo: modulos[index],
                          ),
                        ),
                      );*/
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => ADetalheModulosScreen(
                              modulo: modulos[index],
                              index: 0,
                            ),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      modulos[index].capa.toString(),
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.6,
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(0.37),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        modulos[index].title.toString(),
                        style: colorWhiteBold20,
                      ),
                      Text(
                        modulos[index].subtitle.toString(),
                        style: colorWhiteBold14,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        )
        : Center(child: CircularProgressIndicator(color: appColorPrimary));
  }
}
