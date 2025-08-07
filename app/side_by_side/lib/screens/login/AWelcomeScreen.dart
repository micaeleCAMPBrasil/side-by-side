// ignore_for_file: file_names

import 'package:side_by_side/screens/login/ALoginScreen.dart';
import 'package:side_by_side/screens/login/ARegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/store/user_store.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/auth_check.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';

class AWelcomeScreen extends StatefulWidget {
  const AWelcomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AWelcomeScreenState createState() => _AWelcomeScreenState();
}

class _AWelcomeScreenState extends State<AWelcomeScreen> {
  @override
  void dispose() {
    super.dispose();
    setStatusBarColor(Colors.transparent);
  }

  final UsuarioStore storeUser = UsuarioStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Container(
          decoration: BoxDecoration(
            color: appColorPrimary,
            borderRadius: BorderRadius.circular(25),
          ),
          margin: const EdgeInsets.only(left: 8.0, top: 8),
          height: 50,
          width: 50,
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios_outlined,
              color: appColorPrimaryLight,
              size: 20,
            ),
          ),
        ),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Side by Side',
            style:
                appStore.isDarkModeOn
                    ? colorWhiteRegular28
                    : colorPrimaryRegular28,
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: appColorPrimary,
              borderRadius: BorderRadius.circular(25),
            ),
            margin: const EdgeInsets.only(top: 8, right: 8),
            width: 50,
            height: 50,
            child: InkWell(
              borderRadius: BorderRadius.circular(25),
              child: const Icon(
                Icons.help_outline_outlined,
                color: appColorPrimaryLight,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //Image with content
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(16.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/image/welcome-bg.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.40),
                    BlendMode.darken,
                  ),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Crie uma Conta', style: colorWhiteBoldTitulo45),
                  16.height,
                  Text(
                    'Crie uma conta para ter acesso ao material de discipulado!',
                    style: colorWhiteRegular14,
                  ),
                ],
              ),
            ),
            //Register using email
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => ARegisterScreen(
                              uid: '',
                              nome: '',
                              email: '',
                              senha: '',
                            ),
                      ),
                    ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: appColorPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email_outlined, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Registre usando E-mail',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            //Two button
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        onPressed:
                            () => AuthService.signInWithGoogle().then((
                              uid,
                            ) async {
                              if (uid != null) {
                                if (uid == 'ja_existe') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Este email já possui cadastro usando email e senha. Faça login usando essa opção.',
                                      ),
                                      backgroundColor: appColorPrimary,
                                    ),
                                  );

                                  Future.delayed(
                                    const Duration(seconds: 1),
                                    () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => const ALoginScreen(),
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  await storeUser.loginUser(uid.uid);
                                  bool iscadastrado =
                                      storeUser.isCadastrado.value;

                                  if (iscadastrado) {
                                    Future.delayed(
                                      const Duration(seconds: 1),
                                      () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder:
                                                (context) =>
                                                    const CheckUserLoggedInOrNot(),
                                          ),
                                        );
                                      },
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Você precisa se cadastrar!',
                                        ),
                                        backgroundColor: appColorPrimary,
                                      ),
                                    );

                                    Future.delayed(Duration(seconds: 1), () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => ARegisterScreen(
                                                uid: uid.uid,
                                                nome: uid.displayName ?? '',
                                                email: uid.email,
                                                senha: uid.email,
                                              ),
                                        ),
                                      );
                                    });
                                  }
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Dados Inválidos! Você já se cadastrou?',
                                    ),
                                    backgroundColor: appColorPrimary,
                                  ),
                                );
                              }
                            }),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              appStore.isDarkModeOn
                                  ? context.cardColor
                                  : appetitBrownColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/image/appetit/google.png',
                              width: 70,
                              height: 70,
                            ),
                            Text(
                              'Registre-se com o Google',
                              style: colorWhiteBold14,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Já tem uma conta? ',
                    style:
                        appStore.isDarkModeOn
                            ? colorWhiteRegular16
                            : colorPrimaryRegular16,
                  ),
                  InkWell(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ALoginScreen(),
                          ),
                        ),
                    child: Text(
                      'Faça o Login',
                      style:
                          appStore.isDarkModeOn
                              ? colorWhiteBold16
                              : colorPrimaryBold16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
