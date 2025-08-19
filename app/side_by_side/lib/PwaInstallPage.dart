import 'dart:html' as html;
import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/auth_check.dart';

class PwaInstallPage extends StatefulWidget {
  const PwaInstallPage({super.key});

  @override
  _PwaInstallPageState createState() => _PwaInstallPageState();
}

class _PwaInstallPageState extends State<PwaInstallPage> {
  bool canInstall = false;
  bool isIos = false;

  @override
  void initState() {
    super.initState();

    // Detecta iOS
    final userAgent = html.window.navigator.userAgent.toLowerCase();
    isIos = userAgent.contains('iphone') || userAgent.contains('ipad');

    // Detecta se já está em modo standalone
    final isStandalone =
        html.window.matchMedia('(display-mode: standalone)').matches;

    if (isStandalone) {
      _goToHome();
    } else if (!isIos) {
      // Android/Chrome: verifica se o evento beforeinstallprompt está disponível
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          canInstall = js.context['installPromptAvailable'] == true;
        });
      });
    }
  }

  void _goToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const CheckUserLoggedInOrNot()),
    );
  }

  void _installPwa() async {
    if (!isIos) {
      final result = await js.context.callMethod('installPWA');
      if (result == "accepted") {
        _goToHome();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image/pwa_install.png',
            ), // caminho da imagem
            fit: BoxFit.cover, // ajusta para cobrir todo o container
          ),
        ),
        child: Center(
          child:
              /*isIos
                  ? Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Para instalar o app no iOS, toque no botão de compartilhar no Safari e selecione 'Adicionar à Tela de Início'.",
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  )
                  : canInstall
                  ? ElevatedButton(
                    onPressed: _installPwa,
                    child: const Text("Instalar App"),
                  )
                  : const CircularProgressIndicator(),*/
              /*ElevatedButton(
            onPressed: _installPwa,
            child: const Text("Instalar App"),
          ),*/
              isIos
                  ? Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      'Para instalar o app no iOS, toque no botão de compartilhar no Safari e selecione "Adicionar à Tela de Início".',
                      style: colorPrimaryBold18,
                      textAlign: TextAlign.center,
                    ),
                  )
                  : canInstall
                  ? Stack(
                    children: [
                      Container(
                        width: 150,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [black, black],
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              black.withOpacity(.95),
                              black.withOpacity(.95),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 16.0),
                        width: 150,
                        height: 60,
                        decoration: BoxDecoration(
                          color: appColorPrimary,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.download),
                            const SizedBox(width: 4),
                            Text('Instalar App', style: colorPrimaryBold16),
                          ],
                        ),
                      ),
                    ],
                  ).onTap(_installPwa)
                  : const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
