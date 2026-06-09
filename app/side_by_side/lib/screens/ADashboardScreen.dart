// ignore_for_file: file_names

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:side_by_side/fragments/AHomeFragment.dart';
import 'package:side_by_side/fragments/ANotificationFragment.dart';
import 'package:side_by_side/fragments/AProfileFragment.dart';
import 'package:side_by_side/fragments/ASearchFragment.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/utils/AColors.dart';

// ignore: must_be_immutable
class ADashboardScreen extends StatefulWidget {
  int? index;

  ADashboardScreen({super.key, this.index});

  @override
  State<ADashboardScreen> createState() => _ADashboardScreenState();
}

class _ADashboardScreenState extends State<ADashboardScreen> {
  int selectedItem = 0;

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();

    setState(() {
      widget.index != null
          ? selectedItem = widget.index!
          : selectedItem = selectedItem;
    });
  }

  void onTapSelection(int index) {
    /*if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AChildrensScreens()),
      );
    } else {*/
    setState(() => selectedItem = index);
    //}
  }

  /*void pedirPermissaoPush(String userId) {
    debugPrint('uid permission - $userId');
    js.context.callMethod('pedirPermissaoENotificar', [userId]);
  }*/

  @override
  Widget build(BuildContext context) {
    Usuario usuario =
        Provider.of<UsuarioProvider>(context, listen: false).getUsuario;

    List<Widget> widgetOption = <Widget>[
      const AHomeFragment(),
      AModuloPesquisaFragment(usuario: usuario),
      //const SizedBox(),
      const ANotificationFragment(),
      const AProfileFragment(),
    ];

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: widgetOption.elementAt(selectedItem),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 25,
          backgroundColor: appColorSecondary,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedItem,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: onTapSelection,
          elevation: 0,
          unselectedItemColor: Colors.white,
          selectedItemColor: appColorPrimary,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              activeIcon: Icon(Icons.book),
              label: 'Módulos',
            ),
            /*BottomNavigationBarItem(
              icon: Icon(Icons.child_care_outlined),
              label: 'Crianças',
            ),*/
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              activeIcon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
