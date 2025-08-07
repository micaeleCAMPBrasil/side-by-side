// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/auth_check.dart';

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
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CheckUserLoggedInOrNot()),
      );
    });
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
