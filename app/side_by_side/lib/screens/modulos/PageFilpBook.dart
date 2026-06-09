// ignore_for_file: file_names

import 'package:page_flip/page_flip.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/data/licao_detalhada.dart';
import 'package:side_by_side/data/licoes_repository.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/modulos/APageLicao.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/flip/ultils.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class PageFlipBook extends StatefulWidget {
  Usuario usuario;
  Pg pg;
  int idProgresso, initialPage;
  Modulos modulo;
  Licaos licao;

  PageFlipBook({
    required this.usuario,
    required this.pg,
    required this.initialPage,
    required this.idProgresso,
    required this.modulo,
    required this.licao,
    super.key,
  });

  @override
  State<PageFlipBook> createState() => _PageFlipBookState();
}

class _PageFlipBookState extends State<PageFlipBook> {
  final _controller = GlobalKey<PageFlipWidgetState>();

  final ValueNotifier<List<LicaoFlipPage>> licoesNotifier = ValueNotifier([]);

  late LicoesRepository repository;

  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  @override
  void initState() {
    super.initState();
    inserir_devocionais();
    repository = LicoesRepository();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      repository.carregarLicoes(context);
    });
  }

  Future inserir_devocionais() async {
    /*ebugPrint('uid ${widget.usuario.uid}');
    debugPrint('idPg ${widget.pg.id}');
    debugPrint('idModulo ${widget.modulo.id}');
    debugPrint('idLicao ${widget.licao.id}');
    debugPrint('check 0');*/

    await storePg.addProgresso(
      widget.usuario.uid,
      widget.pg.id.toString(),
      'progresso_licao',
      widget.modulo.id.toString(),
      widget.licao.id.toString(),
      '1',
      '0',
    );
    //carregarLicoes(); // 🔥 recarrega páginas
  }

  @override
  void dispose() {
    super.dispose();
    _controller.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final repository = Provider.of<LicoesRepository>(context).licoes;

    /*List<LicaoFlipPage> licoes =
        storePg
            .getlicoesFlip(context)
            .where(
              (element) =>
                  element.idModulo == widget.modulo.id &&
                  element.idLicao == widget.licao.nLicao,
            )
            .toList();*/

    //List<LicaoFlipPage> licoes_so_um = [licoes.last];

    return Scaffold(
      body: ValueListenableBuilder<List<LicaoFlipPage>>(
        valueListenable: repository.licoesNotifier,
        builder: (context, licoes, _) {
          if (licoes.isEmpty) {
            return Center(
              child: CircularProgressIndicator(
                color:
                    appStore.isDarkModeOn ? appColorPrimary : appColorSecondary,
              ),
            );
          }

          List<LicaoFlipPage> licao =
              licoes
                  .where(
                    (element) =>
                        element.idModulo == widget.modulo.id &&
                        element.idLicao == widget.licao.nLicao,
                  )
                  .toList();

          /*List<LicaoFlipPage> licao =
              licoes
                  .where(
                    (element) => element.idModulo == 1 && element.idLicao == 2,
                  )
                  .toList();*/

          return PageFlipWidget(
            key: _controller,
            backgroundColor: Colors.white,
            //lastPage: lastPage(),
            onPageFlipped: (index) async {
              // última página
              if (index == licao.length - 1) {
                await storePg.atualizarProgresso(
                  widget.idProgresso,
                  widget.usuario.uid,
                  widget.pg.id.toString(),
                  widget.licao.idModulo.toString(),
                  widget.licao.nLicao.toString(),
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: appColorSecondary,
                    content: Text(
                      'Lição finalizada! Aguarde...',
                      style: colorWhiteSemiBold16,
                    ),
                    duration: Duration(milliseconds: 1500),
                  ),
                );

                Future.delayed(const Duration(milliseconds: 2000), () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => APageLicao(
                            modulo: widget.modulo,
                            licao: widget.licao,
                            pg: widget.pg,
                            usuario: widget.usuario,
                          ),
                    ),
                  );
                });
              }
            },
            initialIndex: widget.initialPage,
            children: [for (var l in licao) demoPage(context, l)],
          );
        },
      ),
    );
  }

  /*Widget lastPage() {
    //atualiza();
    //return _AutoFinishPage(onFinish: atualiza);

    return Container(
      color: Color(0xff739e59),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Lição Finalizada!', style: colorPrimarySemiBold30),
          IconButton(
            onPressed: atualiza,
            color: Colors.white,
            style: TextButton.styleFrom(backgroundColor: appColorPrimary),
            icon: Icon(Icons.play_arrow_outlined),
          ),
        ],
      ),
    );
  }

  atualiza() async {
    await storePg.atualizarProgresso(
      widget.idProgresso,
      widget.usuario.uid,
      widget.pg.id.toString(),
      widget.pg.idModulo.toString(),
      widget.pg.nLicao.toString(),
    );

    //carregarLicoes(); // 🔥 recarrega páginas

    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => APageLicao(
              modulo: widget.modulo,
              licao: widget.licao,
              pg: widget.pg,
              usuario: widget.usuario,
            ),
      ),
    );
  }*/

  Widget demoPage(BuildContext context, LicaoFlipPage licao) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color:
            licao.page.backgroundPage == ''
                ? const Color(0xff739e59)
                : licao.page.backgroundPage,
        image:
            licao.page.imagemPage != null
                ? DecorationImage(
                  image: AssetImage(licao.page.imagemPage!),
                  fit: BoxFit.cover, // ou BoxFit.fill / contain etc.
                )
                : null,
      ),
      child: Stack(
        children: [
          // Background
          Visibility(
            visible: licao.page.imagens.isEmpty ? false : true,
            child: imagensPage(licao.page.imagens),
          ),
          // Textos
          Visibility(
            visible: licao.page.textos.isEmpty ? false : true,
            child: textosPage(size, licao.page.textos),
          ),
        ],
      ),
    );
  }
}

class _AutoFinishPage extends StatefulWidget {
  final VoidCallback onFinish;

  const _AutoFinishPage({required this.onFinish});

  @override
  State<_AutoFinishPage> createState() => _AutoFinishPageState();
}

class _AutoFinishPageState extends State<_AutoFinishPage> {
  @override
  void initState() {
    super.initState();

    // Aguarda 3 segundos e chama a função
    Future.delayed(const Duration(seconds: 3), () {
      widget.onFinish();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff739e59),
      child: Center(
        child: Text(
          'Lição Finalizada!',
          style: colorPrimarySemiBold30,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
