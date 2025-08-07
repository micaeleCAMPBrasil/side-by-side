// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class AModuloDescrptionComponent extends StatefulWidget {
  Modulos modulo;

  AModuloDescrptionComponent({
    super.key,
    required this.modulo,
  });

  @override
  State<AModuloDescrptionComponent> createState() =>
      _AModuloDescrptionComponentState();
}

class _AModuloDescrptionComponentState
    extends State<AModuloDescrptionComponent> {
  var image = Image.asset('assets/image/appetit/p3.jpg',
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.5),
      colorBlendMode: BlendMode.darken);

  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(
      client: HttpClient(),
    ),
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
                  height: MediaQuery.of(context).viewPadding.top +
                      MediaQuery.of(context).size.height * 0.1,
                ),
                //Top 3 button

                const SizedBox(height: 8),

                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    color: appStore.isDarkModeOn
                        ? context.cardColor
                        : appetitAppContainerColor,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 8,
                        ),
                        child: Text(
                          e.descricao,
                          style: TextStyle(
                            color: Colors.orange.shade600,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
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
