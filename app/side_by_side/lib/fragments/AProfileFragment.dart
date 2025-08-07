// ignore_for_file: file_names

import 'package:provider/provider.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/criancas/AChildrensScreens.dart';
import 'package:side_by_side/screens/login/ALoginScreen.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/store/user_store.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';

class AProfileFragment extends StatefulWidget {
  const AProfileFragment({super.key});

  @override
  State<AProfileFragment> createState() => _AProfileFragmentState();
}

class _AProfileFragmentState extends State<AProfileFragment>
    with TickerProviderStateMixin {
  final UsuarioStore storeUser = UsuarioStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Usuario usuario =
        Provider.of<UsuarioProvider>(context, listen: false).getUsuario;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 16),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //1st content (Fixed height: 350)
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 0,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                      child: /* usuario.background == ''
                          ? */ Image.asset(
                        'assets/image/appetit/backgroundprofile.jpg',
                        width: MediaQuery.of(context).size.width,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                      /*: Image.network(
                              usuario.background,
                              width: MediaQuery.of(context).size.width,
                              height: 220,
                              fit: BoxFit.cover,
                            ),*/
                    ),
                  ),
                  Positioned(
                    top: 16 + MediaQuery.of(context).viewPadding.top,
                    right: 16,
                    child: ClipRRect(
                      // clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        height: 50,
                        width: 50,
                        child: InkWell(
                          onTap: () {
                            AuthService.logout();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ALoginScreen(),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16 + MediaQuery.of(context).viewPadding.top,
                    right: 70,
                    child: ClipRRect(
                      // clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        height: 50,
                        width: 50,
                        child: InkWell(
                          onTap: () {
                            AuthService.logout();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ALoginScreen(),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.logout_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child:
                                usuario.foto == ''
                                    ? Image.asset(
                                      'assets/image/nopicture.png',
                                      width: 120,
                                      height: 140,
                                      fit: BoxFit.cover,
                                    )
                                    : Image.network(
                                      usuario.foto,
                                      width: 120,
                                      height: 140,
                                      fit: BoxFit.cover,
                                    ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            usuario.nome.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '${usuario.estado}, ${usuario.cidade}',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      /*Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AFollowersScreen(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.mode_edit_sharp,
                            color: context.iconColor,
                            size: 25,
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ],
              ),
            ),
            //2nd content (Social information)
            ListTile(
              onTap: () {
                appStore.toggleDarkMode(value: !appStore.isDarkModeOn);
                setState(() {});
                if (!appStore.isDarkModeOn) {
                  setStatusBarColor(Colors.white);
                }
              },
              leading: Icon(Icons.light_mode, color: context.iconColor),
              title: Text('Modo Escuro', style: boldTextStyle()),
              trailing: Switch(
                value: appStore.isDarkModeOn,
                onChanged: (val) {
                  appStore.toggleDarkMode(value: val);
                  setState(() {});
                  if (!appStore.isDarkModeOn) {
                    setStatusBarColor(Colors.white);
                  }
                },
                activeColor: Colors.orange.shade600,
              ),
            ),
            //2nd content (Social information)
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AChildrensScreens(),
                  ),
                );
              },
              leading: Icon(Icons.list, color: context.iconColor),
              title: Text('Crianças', style: boldTextStyle()),
            ),
            16.height,
          ],
        ),
      ),
    );
  }
}
