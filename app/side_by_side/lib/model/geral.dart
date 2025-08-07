import 'package:flutter/material.dart';

class BotoesAcessoRapido {
  String title;
  Icon icon;
  Function() onTap;

  BotoesAcessoRapido({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
