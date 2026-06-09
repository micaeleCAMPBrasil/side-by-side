// ignore_for_file: file_names

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:side_by_side/main.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/screens/criancas/AAddChildrenScreen.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/AConstants.dart';

// ignore: must_be_immutable
class AMessagemScreen extends StatefulWidget {
  const AMessagemScreen({super.key});

  @override
  State<AMessagemScreen> createState() => _AMessagemScreenState();
}

class _AMessagemScreenState extends State<AMessagemScreen> {
  List<Widget> textos = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      textos = [
        Column(
          children: [
            Icon(
              Icons.auto_awesome,
              color:
                  appStore.isDarkModeOn
                      ? appColorPrimaryLight
                      : appColorPrimary,
              size: 100,
            ),
            AnimatedTextKit(
              onFinished:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AAddChildrenScreen(),
                    ),
                  ),
              totalRepeatCount: 1,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Bem-vindo(a) 👋',
                  speed: Duration(milliseconds: 90),
                  textAlign: TextAlign.center,
                  textStyle:
                      appStore.isDarkModeOn
                          ? colorWhiteSemiBold40
                          : colorPrimarySemiBold40,
                ),
                TypewriterAnimatedText(
                  'Para começar essa aventura incrível 🚀',
                  speed: Duration(milliseconds: 90),
                  textAlign: TextAlign.center,
                  textStyle:
                      appStore.isDarkModeOn
                          ? colorWhiteSemiBold40
                          : colorPrimarySemiBold40,
                ),
                TypewriterAnimatedText(
                  'Você precisa cadastrar seu(s) filho(s).',
                  speed: Duration(milliseconds: 90),
                  textAlign: TextAlign.center,
                  textStyle:
                      appStore.isDarkModeOn
                          ? colorWhiteSemiBold40
                          : colorPrimarySemiBold40,
                ),
                TypewriterAnimatedText(
                  'Vamos lá? 😊',
                  speed: Duration(milliseconds: 90),
                  textAlign: TextAlign.center,
                  textStyle:
                      appStore.isDarkModeOn
                          ? colorWhiteSemiBold40
                          : colorPrimarySemiBold40,
                ),
              ],
            ),
          ],
        ),
        Text(
          'Para começar essa aventura incrível 🚀',
          textAlign: TextAlign.center,
          style:
              appStore.isDarkModeOn
                  ? colorWhiteSemiBold40
                  : colorPrimarySemiBold40,
        ),
        Text(
          'Você precisa cadastrar seu(s) filho(s).',
          textAlign: TextAlign.center,
          style:
              appStore.isDarkModeOn
                  ? colorWhiteSemiBold40
                  : colorPrimarySemiBold40,
        ),
        Text(
          'Vamos lá? 😊',
          textAlign: TextAlign.center,
          style:
              appStore.isDarkModeOn
                  ? colorWhiteSemiBold40
                  : colorPrimarySemiBold40,
        ),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [textos[0]],
          ),
        ),
      ),
    );
  }
}
