import 'package:flutter/material.dart';

class PwaInstallPage extends StatelessWidget {
  const PwaInstallPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Em Android/iOS não existe instalação de PWA
    return const Scaffold(
      body: Center(child: Text("PWA não disponível nesta plataforma")),
    );
  }
}
