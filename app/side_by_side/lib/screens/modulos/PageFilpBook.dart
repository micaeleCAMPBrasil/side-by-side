// ignore_for_file: file_names

import 'package:page_flip/page_flip.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/data/licao_detalhada.dart';
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
  int idProgresso;
  Modulos modulo;
  Licaos licao;

  PageFlipBook({
    required this.usuario,
    required this.pg,
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

  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  @override
  void initState() {
    inserir_devocionais();
    super.initState();
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
  }

  @override
  void dispose() {
    super.dispose();
    _controller.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<LicaoFlipPage> licoes =
        storePg
            .getlicoesFlip(context)
            .where(
              (element) =>
                  element.idModulo == widget.modulo.id &&
                  element.idLicao == widget.licao.nLicao,
            )
            .toList();

    //List<LicaoFlipPage> licoes_so_um = [licoes.last];

    return Scaffold(
      body: PageFlipWidget(
        key: _controller,
        backgroundColor: Colors.white,
        //isRightSwipe: true,
        lastPage: lastPage(),
        children: <Widget>[
          for (var i = 0; i < licoes.length; i++) demoPage(context, licoes[i]),
        ],
      ),
    );
  }

  Widget lastPage() {
    return Container(
      color: Color(0xff739e59),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Lição Finalizada!', style: colorPrimaryBold30),
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
  }

  Widget demoPage(BuildContext context, LicaoFlipPage licao) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color:
          licao.page.backgroundPage == ''
              ? Color(0xff739e59)
              : licao.page.backgroundPage,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
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
