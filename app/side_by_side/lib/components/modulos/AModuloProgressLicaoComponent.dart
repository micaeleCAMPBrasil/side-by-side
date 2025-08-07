// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/data/licao_detalhada.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class AModuloProgressLicaoComponent extends StatefulWidget {
  Modulos modulo;

  AModuloProgressLicaoComponent({super.key, required this.modulo});

  @override
  State<AModuloProgressLicaoComponent> createState() =>
      _AModuloProgressLicaoComponentState();
}

class _AModuloProgressLicaoComponentState
    extends State<AModuloProgressLicaoComponent> {
  var image = Image.asset(
    'assets/image/appetit/p3.jpg',
    fit: BoxFit.cover,
    color: Colors.black.withOpacity(0.5),
    colorBlendMode: BlendMode.darken,
  );

  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  @override
  void initState() {
    super.initState();
    getinfo();
  }

  getinfo() async {
    User userFire = AuthService.gerarUserFirebase();
    await storePg.getPgId(userFire.uid);
  }

  @override
  Widget build(BuildContext context) {
    List<DetalhesModulos> detalhes =
        listDetalhesModulos
            .where((element) => element.idModulo == widget.modulo.id)
            .toList();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:
                  MediaQuery.of(context).viewPadding.top +
                  MediaQuery.of(context).size.height * 0.1,
            ),

            //Top 3 button
            /*const Text(
              'Passos...',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),*/
            //const SizedBox(height: 16),
            Column(
              children:
                  detalhes
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  e.assets.toString(),
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.nome.toString(),
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Visibility(
                                      visible: e.descricao.isNotEmpty,
                                      child: Text(
                                        e.descricao.toString(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: InkWell(
                                    child: Container(
                                      color:
                                          appStore.isDarkModeOn
                                              ? context.cardColor
                                              : appetitAppContainerColor,
                                      height: 50,
                                      width: 50,
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
