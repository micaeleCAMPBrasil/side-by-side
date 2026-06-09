// ignore_for_file: file_names

import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/ADashboardScreen.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class APageDesafio extends StatefulWidget {
  Usuario usuario;
  Pg pg;

  APageDesafio({super.key, required this.usuario, required this.pg});

  @override
  State<APageDesafio> createState() => _APageDesafioState();
}

class _APageDesafioState extends State<APageDesafio> {
  final IFuncoesPHP repository = IFuncoesPHP(client: HttpClient());
  List<Licaos> listlicoes = [];
  List<Modulos> modulo = [];

  List<String> lista1 = [
    'um brinquedo;',
    'uma comida;',
    'uma roupa;',
    'uma casa;',
    'uma planta.',
  ];

  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  @override
  void initState() {
    super.initState();
    getinfo();
  }

  bool loading = false;

  void listarLicoes() async {
    List<Licaos> lista = await repository.getLicoes();
    setState(() {
      listlicoes =
          lista
              .where((element) => element.idModulo == widget.pg.idModulo)
              .toList();
      modulo =
          getModulos()
              .where((element) => element.id == widget.pg.idModulo)
              .toList();
      loading = true;
    });
  }

  getinfo() async {
    listarLicoes();

    await storePg.getPgId(widget.usuario.uid);
    await storePg.progress(
      widget.usuario.uid,
      widget.pg.id.toString(),
      widget.pg.idModulo.toString(),
      widget.pg.nLicao.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Scaffold(
          body: WillPopScope(
            onWillPop: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ADashboardScreen()),
              );
              return false;
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: ValueListenableBuilder<Desafio?>(
                valueListenable: storePg.desafio,
                builder: (context, list, child) {
                  if (list == null) {
                    getinfo();
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      alignment: Alignment.center,
                      child: Center(
                        child: CircularProgressIndicator(
                          color:
                              appStore.isDarkModeOn
                                  ? appColorPrimary
                                  : appColorSecondary,
                        ),
                      ),
                    );
                  } else {
                    return Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).viewPadding.top,
                        ),

                        //Top back button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: InkWell(
                                onTap:
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => ADashboardScreen(),
                                      ),
                                    ),
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  color: appColorSecondary,
                                  child: const Icon(
                                    Icons.arrow_back_ios_outlined,
                                    color: appTextColorWhite,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        //Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/image/icons/${list.capa}',
                                width: MediaQuery.of(context).size.width,
                                height: 250,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 16),

                        //Desafio Informação
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'assets/image/icons/desafio.png',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      list.titulo,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    SizedBox(
                                      width: 180,
                                      child: Text(
                                        'Desafio ${list.nLicao}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),

                        Column(
                          children:
                              list.lista.map((detalhe) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      color: appColorPrimary,
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (detalhe.titulo.isNotEmpty)
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 8,
                                              ),
                                              child: Text(
                                                detalhe.titulo,
                                                style: colorPrimaryBold18,
                                              ),
                                            ),

                                          if (detalhe.e_pergunta)
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: List.generate(
                                                      detalhe.dados.length,
                                                      (index) => SizedBox(
                                                        width:
                                                            MediaQuery.of(
                                                              context,
                                                            ).size.width *
                                                            0.25,
                                                        child: Text(
                                                          '${index + 1}',
                                                          style:
                                                              colorPrimaryBold18,
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  const SizedBox(height: 8),

                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        detalhe.dados.map((
                                                          item,
                                                        ) {
                                                          return SizedBox(
                                                            width:
                                                                MediaQuery.of(
                                                                  context,
                                                                ).size.width *
                                                                0.25,
                                                            child: Text(
                                                              item,
                                                              style:
                                                                  colorPrimaryRegular16,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          );
                                                        }).toList(),
                                                  ),
                                                ],
                                              ),
                                            )
                                          else
                                            ...detalhe.dados.map(
                                              (item) => Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 8,
                                                ),
                                                child: Text(
                                                  '• $item',
                                                  style: colorPrimaryRegular16,
                                                ),
                                              ),
                                            ),

                                          if (detalhe.subtitulo.isNotEmpty)
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 4,
                                              ),
                                              child: Text(
                                                detalhe.subtitulo,
                                                style: colorPrimaryRegular16,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ),
        )
        : Center(
          child: CircularProgressIndicator(
            color: appStore.isDarkModeOn ? appColorPrimary : appColorSecondary,
          ),
        );
  }
}
