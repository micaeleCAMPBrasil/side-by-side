// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/ADashboardScreen.dart';
import 'package:side_by_side/screens/inicio/AWalkThroughScreen.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/store/user_store.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';
import 'package:side_by_side/utils/notification_service_web.dart';

class CheckUserLoggedInOrNot extends StatefulWidget {
  const CheckUserLoggedInOrNot({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CheckUserLoggedInOrNotState createState() => _CheckUserLoggedInOrNotState();
}

class _CheckUserLoggedInOrNotState extends State<CheckUserLoggedInOrNot> {
  final UsuarioStore storeUser = UsuarioStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  @override
  void initState() {
    AuthService.isLoggedIn().then((value) async {
      if (value) {
        await PushNotificationsWeb.init();

        User userFire = AuthService.gerarUserFirebase();

        debugPrint('UID - ${userFire.uid}');

        await storeUser.getUID(userFire.uid);

        Usuario usuario = storeUser.state.value;

        await storePg.getPgId(usuario.uid);
        Pg pg = storePg.pg.value;

        debugPrint("USUARIO _ ${usuario.nome}");

        await storePg.addProgresso(
          usuario.uid,
          pg.id.toString(),
          'inicial',
          '',
          '',
          '',
          '',
        );

        usuario.tokenAlert = await PushNotificationsWeb.getToken() ?? '';

        Provider.of<UsuarioProvider>(
          context,
          listen: false,
        ).updateUsuario(usuario);

        await storeUser.update_token(usuario);

        Provider.of<PgProvider>(context, listen: false).updatePg(pg);
        Provider.of<PgProvider>(context, listen: false).updateLicoes(pg);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ADashboardScreen()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AWalkThroughScreen()),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return loading();
  }

  loading() {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
