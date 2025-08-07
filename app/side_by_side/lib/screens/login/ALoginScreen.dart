// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:side_by_side/screens/login/AForgetPasswordScreen.dart';
import 'package:side_by_side/screens/login/ARegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/screens/login/AWelcomeScreen.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/store/user_store.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/auth_check.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';

class ALoginScreen extends StatefulWidget {
  const ALoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ALoginScreenState createState() => _ALoginScreenState();
}

class _ALoginScreenState extends State<ALoginScreen> {
  var viewPassword = true;

  final UsuarioStore storeUser = UsuarioStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  GlobalKey<FormState> mykey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).viewPadding.top),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appColorPrimary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: 50,
                  height: 50,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: appColorPrimaryLight,
                    ),
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AWelcomeScreen(),
                          ),
                        ),
                  ),
                ),
                TextButton(
                  onPressed:
                      () => Navigator.pushReplacement(
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
                  child: Text(
                    'Cadastre',
                    style: TextStyle(fontSize: 20, color: context.iconColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Login',
              style:
                  appStore.isDarkModeOn
                      ? colorWhiteSemiBold40
                      : colorPrimarySemiBold40,
            ),
            Text(
              'Continue o discipulado.',
              style:
                  appStore.isDarkModeOn
                      ? colorWhiteRegular16
                      : colorPrimaryRegular16,
            ),
            Form(
              key: mykey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: TextFormField(
                        controller: emailController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelStyle: colorSecondaryBold14,
                          border: InputBorder.none,
                          labelText: 'E-mail',
                          hintText: 'Digite seu e-mail',
                          filled: true,
                          fillColor:
                              appStore.isDarkModeOn
                                  ? context.cardColor
                                  : appShadowColor,
                          hintStyle: colorSecondaryBold14,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Digite um e-mail válido';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: TextFormField(
                        controller: passController,
                        obscureText: viewPassword,
                        decoration: InputDecoration(
                          labelStyle: colorSecondaryBold14,
                          border: InputBorder.none,
                          labelText: 'Senha',
                          hintText: 'Digite sua senha',
                          filled: true,
                          fillColor:
                              appStore.isDarkModeOn
                                  ? context.cardColor
                                  : appShadowColor,
                          hintStyle: colorSecondaryBold14,
                          suffixIcon: IconButton(
                            onPressed:
                                () => setState(
                                  () => viewPassword = !viewPassword,
                                ),
                            icon:
                                viewPassword
                                    ? const Icon(
                                      Icons.visibility_off,
                                      color: Colors.grey,
                                    )
                                    : const Icon(
                                      Icons.visibility,
                                      color: Colors.grey,
                                    ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Digite uma senha válida';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap:
                            () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => const AForgetPasswordScreen(),
                              ),
                            ),
                        child: Text(
                          'Esqueceu a senha?',
                          style:
                              appStore.isDarkModeOn
                                  ? colorWhiteRegular14
                                  : colorPrimaryRegular14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  if (emailController.text == '' || passController.text == '') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Dados Vazios'),
                        backgroundColor: appColorPrimary,
                      ),
                    );
                  } else {
                    String email = emailController.text.replaceAll(' ', '');
                    AuthService.login(email, passController.text).then((
                      value,
                    ) async {
                      if (value == 'Sucess') {
                        User userFire = AuthService.gerarUserFirebase();
                        await storeUser.loginUser(userFire.uid);
                        bool iscadastrado = storeUser.isCadastrado.value;

                        if (iscadastrado) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Bem Vindo'),
                              backgroundColor: appColorPrimary,
                            ),
                          );

                          Future.delayed(const Duration(seconds: 1), () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => const CheckUserLoggedInOrNot(),
                              ),
                            );
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Você precisa se cadastrar!'),
                              backgroundColor: appColorPrimary,
                            ),
                          );

                          Future.delayed(const Duration(seconds: 1), () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => ARegisterScreen(
                                      uid: userFire.uid,
                                      nome: userFire.displayName ?? '',
                                      email: email,
                                      senha: passController.text,
                                    ),
                              ),
                            );
                          });
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Dados Inválidos! Você já se cadastrou? Ou Faça o login usando o Google',
                            ),
                            backgroundColor: appColorPrimary,
                          ),
                        );
                      }
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: appColorPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text('Login', style: colorWhiteBold20),
              ),
            ),
            const SizedBox(height: 16),
            Row(
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
                              } else {
                                await storeUser.loginUser(uid.uid);
                                bool iscadastrado =
                                    storeUser.isCadastrado.value;

                                if (iscadastrado) {
                                  Future.delayed(const Duration(seconds: 1), () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) =>
                                                const CheckUserLoggedInOrNot(),
                                      ),
                                    );
                                  });
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Você precisa se cadastrar!',
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
                                              (context) => ARegisterScreen(
                                                uid: uid.uid,
                                                nome: uid.displayName ?? '',
                                                email: uid.email,
                                                senha: uid.email,
                                              ),
                                        ),
                                      );
                                    },
                                  );
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
                          Text('Login com o Google', style: colorWhiteBold14),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
