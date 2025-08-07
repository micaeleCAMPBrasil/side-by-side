import 'package:flutter/material.dart';

class ControlNav extends ChangeNotifier {
  int routa = 0;
  int get getrouta => routa;

  updateRoute(int newindex) {
    routa = newindex;
  }
}
