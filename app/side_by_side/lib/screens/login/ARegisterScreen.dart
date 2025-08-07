// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:side_by_side/components/ARegisterFormComponent.dart';
import 'package:side_by_side/screens/login/ALoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/screens/login/AWelcomeScreen.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/store/user_store.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/auth_check.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class ARegisterScreen extends StatefulWidget {
  String uid, nome, email, senha;
  ARegisterScreen({
    super.key,
    required this.uid,
    required this.nome,
    required this.email,
    required this.senha,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ARegisterScreenState createState() => _ARegisterScreenState();
}

class _ARegisterScreenState extends State<ARegisterScreen> {
  List<Widget> reelsPages = [];

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final telefoneController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  final bool _isPais = true;

  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _paisController = TextEditingController();
  final TextEditingController _cidadeController = TextEditingController();
  final TextEditingController _estadoController = TextEditingController();

  PageController mypagecontroller = PageController(initialPage: 0);
  int selectedindex = 0;
  int pageindex = 1;
  bool isloading = false;

  final UsuarioStore storeUser = UsuarioStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  final PgStore storePG = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  bool ja_mandou_email = false;
  bool ja_mandou_senha = false;

  @override
  void initState() {
    checinfo();
    super.initState();

    setState(() {
      ja_mandou_email = widget.email == '' ? false : true;
      ja_mandou_senha = widget.senha == '' ? false : true;

      nameController.text = ja_mandou_email ? widget.nome : nameController.text;

      emailController.text =
          ja_mandou_email ? widget.email : emailController.text;
      passController.text =
          ja_mandou_senha ? widget.senha : passController.text;
    });

    reelsPages = <Widget>[
      FormInformacoesPessoais(
        nameController: nameController,
        telefoneController: telefoneController,
      ),
      FormInformacoesEndereco(
        isPais: _isPais,
        cepController: _cepController,
        estadoController: _estadoController,
        cidadeController: _cidadeController,
        paisController: _paisController,
        mostrar_temos: ja_mandou_email,
      ),
      if (!ja_mandou_email)
        FormInformacoesEmaileSenha(
          emailController: emailController,
          passController: passController,
          mostrar_temos: ja_mandou_email,
        ),
    ];
  }

  checinfo() async {
    LocationPermission permission = await Geolocator.checkPermission();
    debugPrint('$permission');
    await Geolocator.requestPermission();
    await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          //top 3 elements
          //main content
          PageView(
            controller: mypagecontroller,
            onPageChanged: (value) {
              setState(() {
                selectedindex = value;
                pageindex = value + 1;
              });
            },
            children:
                reelsPages
                    .map((item) => Form(child: Container(child: item)))
                    .toList(),
          ),

          // Titulo
          Padding(
            padding: EdgeInsets.only(
              bottom: 16,
              right: 16,
              left: 16,
              top: 16.0 + MediaQuery.of(context).viewPadding.top,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: appColorPrimary,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: appColorPrimaryLight,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AWelcomeScreen(),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  "Cadastre-se\nDiscipule seu filho",
                  style:
                      appStore.isDarkModeOn
                          ? colorWhiteRegular16
                          : colorPrimaryRegular16,
                  textAlign: TextAlign.center,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 50,
                    height: 30,
                    color: appColorPrimary,
                    child: Center(
                      child: InkWell(
                        child: Text(
                          '$pageindex/${reelsPages.length}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //last two button
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              if (selectedindex == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => const AWelcomeScreen(),
                                  ),
                                );
                              } else {
                                mypagecontroller.jumpToPage(selectedindex - 1);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: appColorPrimary,
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_outlined,
                              color: appColorPrimaryLight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Spacer(),
                    const SizedBox(width: 64),
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (selectedindex == reelsPages.length - 1) {
                                if (nameController.text == '' ||
                                    emailController.text == '' ||
                                    passController.text == '' ||
                                    telefoneController.text == '' ||
                                    _estadoController.text == '' ||
                                    _cidadeController.text == '') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Dados Vazios'),
                                      backgroundColor: appColorPrimary,
                                    ),
                                  );
                                } else {
                                  String email = emailController.text
                                      .replaceAll(' ', '');
                                  if (ja_mandou_email) {
                                    User userFire =
                                        AuthService.gerarUserFirebase();

                                    await userFire.updateDisplayName(
                                      nameController.text,
                                    );

                                    String tokenAlert = 'carregando...';
                                    /* await PushNotifications.getToken();*/

                                    await storeUser.createUser(
                                      widget.uid,
                                      nameController.text,
                                      email,
                                      passController.text,
                                      telefoneController.text,
                                      _isPais ? 'Brasil' : _paisController.text,
                                      _estadoController.text,
                                      _cidadeController.text,
                                      tokenAlert,
                                    );
                                    await storePG.addPg(widget.uid);

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Cadastro Realizado com Sucesso',
                                        ),
                                        backgroundColor: appColorPrimary,
                                      ),
                                    );
                                    Future.delayed(
                                      const Duration(seconds: 3),
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
                                    AuthService.createUserFirebase(
                                      nameController.text,
                                      email,
                                      passController.text,
                                    ).then((value) async {
                                      if (value == "Error") {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              value,
                                              style: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            backgroundColor: appColorPrimary,
                                          ),
                                        );
                                      } else if (value ==
                                          "email-already-in-use") {
                                        AuthService.login(
                                          email,
                                          passController.text,
                                        ).then((value_2) async {
                                          if (value_2 == 'Sucess') {
                                            // função para cadastrar no servidor

                                            User userFire =
                                                AuthService.gerarUserFirebase();

                                            String tokenAlert = 'carregando...';
                                            /* await PushNotifications.getToken();*/

                                            await storeUser.createUser(
                                              userFire.uid,
                                              nameController.text,
                                              email,
                                              passController.text,
                                              telefoneController.text,
                                              _isPais
                                                  ? 'Brasil'
                                                  : _paisController.text,
                                              _estadoController.text,
                                              _cidadeController.text,
                                              tokenAlert,
                                            );

                                            await storePG.addPg(userFire.uid);

                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                  'Você já está cadastrado',
                                                ),
                                                backgroundColor:
                                                    appColorPrimary,
                                              ),
                                            );
                                            Future.delayed(
                                              const Duration(seconds: 3),
                                              () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder:
                                                        (context) =>
                                                            const ALoginScreen(),
                                                  ),
                                                );
                                              },
                                            );
                                          } else if (value_2 ==
                                              'invalid-credential') {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Você já está cadastrado com esse e-mail, use um diferente ou faça o login!',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                backgroundColor:
                                                    appColorPrimary,
                                              ),
                                            );
                                          } else {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  value_2,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                backgroundColor:
                                                    appColorPrimary,
                                              ),
                                            );
                                          }
                                        });
                                      } else {
                                        // função para cadastrar no servidor

                                        String tokenAlert = 'carregando...';
                                        /* await PushNotifications.getToken();*/

                                        await storeUser.createUser(
                                          value,
                                          nameController.text,
                                          email,
                                          passController.text,
                                          telefoneController.text,
                                          _isPais
                                              ? 'Brasil'
                                              : _paisController.text,
                                          _estadoController.text,
                                          _cidadeController.text,
                                          tokenAlert,
                                        );
                                        await storePG.addPg(value);

                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Cadastro Realizado com Sucesso',
                                            ),
                                            backgroundColor: appColorPrimary,
                                          ),
                                        );
                                        Future.delayed(
                                          const Duration(seconds: 3),
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
                                      }
                                    });
                                  }
                                }
                              } else {
                                mypagecontroller.jumpToPage(selectedindex + 1);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: appColorPrimary,
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: appColorPrimaryLight,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
