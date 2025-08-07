// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/screens/criancas/AEditChildrenScreen.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class ACriancasListComponent extends StatefulWidget {
  const ACriancasListComponent({super.key});

  @override
  State<ACriancasListComponent> createState() => _ACriancasListComponentState();
}

class _ACriancasListComponentState extends State<ACriancasListComponent> {
  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  bool loading = false;

  @override
  void initState() {
    super.initState();
    getinfopg();
  }

  getinfopg() async {
    User userFire = AuthService.gerarUserFirebase();
    await storePg.getPgId(userFire.uid);
    setState(() {
      loading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 76),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 30,
                  width: 120,
                  color:
                      appStore.isDarkModeOn
                          ? context.cardColor
                          : appetitAppContainerColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.adjust_outlined,
                        color: Colors.red,
                        size: 15,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${storePg.listCriancas.value.length} crianças',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: context.iconColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              /*Column(
                  children: mynotifications
                      .map((e) =>
                      .toList(),
                ),*/
              ValueListenableBuilder<List<Criancas>>(
                valueListenable: storePg.listCriancas,
                builder: (context, list, child) {
                  if (list.isEmpty) {
                    return Text(
                      'Você não tem criança, cadastre agora! Passe para o lado!',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: context.iconColor,
                      ),
                      textAlign: TextAlign.center,
                    );
                  } else {
                    return ListView.builder(
                      itemCount: list.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'assets/image/nopicture.png',
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
                                      list[index].nome.toString(),
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      list[index].idade == '1'
                                          ? '${list[index].idade} ano'
                                          : '${list[index].idade} anos',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10,
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
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => AEditChildrenScreen(
                                                crianca: list[index],
                                              ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      color:
                                          appStore.isDarkModeOn
                                              ? context.cardColor
                                              : appetitAppContainerColor,
                                      height: 50,
                                      width: 50,
                                      child: const Icon(
                                        Icons.edit,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ],
          ),
        )
        : Center(child: CircularProgressIndicator(color: appColorPrimary));
  }
}
