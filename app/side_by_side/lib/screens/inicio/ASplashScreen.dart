// ignore_for_file: file_names

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/pwa_install_page.dart'; // <-- novo import condicional
import 'package:side_by_side/utils/auth_check.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/utils/AConstants.dart';

// ignore: must_be_immutable
class ASplashScreen extends StatefulWidget {
  const ASplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ASplashScreenState createState() => _ASplashScreenState();
}

class _ASplashScreenState extends State<ASplashScreen> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  /*Future<void> verificarWalkthrough() async {
    final prefs = await SharedPreferences.getInstance();

    final pular = prefs.getBool('pular_walkthrough') ?? false;

    if (pular) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const AWelcomeScreen()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const AWalkThroughScreen()),
      );
    }
  }*/

  void _redirect() async {
    // Dá um tempinho para mostrar o splash
    await Future.delayed(const Duration(seconds: 2));

    if (!kIsWeb) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PwaInstallPage()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CheckUserLoggedInOrNot()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Text(
              'Side by Side',
              style:
                  appStore.isDarkModeOn
                      ? colorWhiteBoldTitulo45
                      : colorPrimaryBoldTitulo45,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'assets/image/splash_img.png',
              fit: BoxFit.cover,
              height: 120,
              width: size.width,
            ),
          ),
        ],
      ),
    );
  }
}
