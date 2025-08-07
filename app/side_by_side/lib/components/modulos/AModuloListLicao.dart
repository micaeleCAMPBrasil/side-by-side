// ignore_for_file: file_names

import 'package:provider/provider.dart';
import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/modulos/APageLicao.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class AModuloListLicao extends StatefulWidget {
  Modulos modulo;
  AModuloListLicao({super.key, required this.modulo});

  @override
  State<AModuloListLicao> createState() => _AModuloListLicaoState();
}

class _AModuloListLicaoState extends State<AModuloListLicao> {
  List<Licaos> listlicoes = [];
  final IFuncoesPHP repository = IFuncoesPHP(client: HttpClient());

  bool loading = false;

  @override
  void initState() {
    super.initState();
    listarLicoes();
  }

  void listarLicoes() async {
    List<Licaos> lista = await repository.getLicoes();
    setState(() {
      listlicoes =
          lista
              .where((element) => element.idModulo == widget.modulo.id)
              .toList();
      loading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    double alturaImagem = MediaQuery.of(context).size.height * 0.6;

    Pg pg = Provider.of<PgProvider>(context, listen: false).getPg;
    Usuario usuario =
        Provider.of<UsuarioProvider>(context, listen: false).getUsuario;

    return loading
        ? Column(
          children: [
            SizedBox(
              height:
                  MediaQuery.of(context).viewPadding.top +
                  MediaQuery.of(context).size.height * 0.1,
            ),

            //Top 3 button
            const SizedBox(height: 8),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              child: SingleChildScrollView(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: (1 / 1.5),
                  ),
                  itemCount: listlicoes.length,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => APageLicao(
                                  modulo: widget.modulo,
                                  licao: listlicoes[index],
                                  pg: pg,
                                  usuario: usuario,
                                ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          /*ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              listlicoes[index].capa.toString(),
                              height: alturaImagem,
                              width: MediaQuery.of(context).size.width * 0.6,
                              fit: BoxFit.cover,
                              color: Colors.black.withOpacity(0.25),
                              colorBlendMode: BlendMode.darken,
                            ),
                          ),*/
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    appColorPrimary,
                                    const Color.fromARGB(255, 29, 29, 29),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: alturaImagem / 5),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    listlicoes[index].subtitle.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    listlicoes[index].title.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        )
        : Center(child: CircularProgressIndicator(color: appColorPrimary));
  }
}
