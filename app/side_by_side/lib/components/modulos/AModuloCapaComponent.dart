// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class AModuloCapaComponent extends StatefulWidget {
  Modulos modulo;

  AModuloCapaComponent({super.key, required this.modulo});

  @override
  State<AModuloCapaComponent> createState() => _AModuloCapaComponentState();
}

class _AModuloCapaComponentState extends State<AModuloCapaComponent> {
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children:
            getModulos().where((element) => element.id == widget.modulo.id).map(
              (e) {
                return Column(
                  children: [
                    SizedBox(
                      height:
                          MediaQuery.of(context).viewPadding.top +
                          MediaQuery.of(context).size.height * 0.1,
                    ),

                    //Top 3 button
                    const SizedBox(height: 8),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage(e.capa.toString()),
                            height: MediaQuery.of(context).size.height * 0.7,
                            width: double.infinity,
                            color: Colors.black.withOpacity(0.4),
                            colorBlendMode: BlendMode.darken,
                            fit: BoxFit.cover,
                            errorBuilder:
                                (context, url, error) =>
                                    const Icon(Icons.error),
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          Positioned(
                            //top: 16,
                            left: 8,
                            bottom: 100,
                            child: SizedBox(
                              height: 40,
                              //width: ,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white24.withOpacity(
                                    0.25,
                                  ),
                                  shape: const StadiumBorder(),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      child: ClipOval(
                                        child: Image.asset(
                                          e.capa.toString(),
                                          height: 70,
                                          width: 70,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      e.title.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,

                            //top: 80,
                            bottom: 10,
                            right: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.subtitle.toString(),
                                  style: colorWhiteBold20,
                                ),
                                Text(
                                  e.title.toString(),
                                  style: colorWhiteRegulard18,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ).toList(),
      ),
    );
  }
}
