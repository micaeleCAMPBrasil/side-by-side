import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'package:side_by_side/firebase_options.dart';
import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/modulos/PageFilpBook.dart';
import 'package:side_by_side/store/AppStore.dart';
import 'package:side_by_side/store/control_navigation.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/ADataProvider.dart';
import 'package:side_by_side/utils/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';

import 'screens/inicio/ASplashScreen.dart';

AppStore appStore = AppStore();
// function to lisen to background changes
@pragma('vm:entry-point')
Future<void> _firebaseBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  /*if (message.notification != null) {
    debugPrint("Some notification received in background...");
  }*/
}

void main() async {
  /*LocationPermission permission = await Geolocator.checkPermission();
  debugPrint('$permission');
  await Geolocator.requestPermission();
  await Geolocator.getCurrentPosition();*/

  WidgetsFlutterBinding.ensureInitialized();
  await initialize(aLocaleLanguageList: languageList());

  appStore.toggleDarkMode(value: getBoolAsync(isDarkModeOnPref));

  defaultToastGravityGlobal = ToastGravity.BOTTOM;

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // listem to background notifications
  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundHandler);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),
        ChangeNotifierProvider(create: (context) => UsuarioProvider()),
        ChangeNotifierProvider(create: (context) => PgProvider()),
        ChangeNotifierProvider(create: (context) => ControlNav()),
      ],
      child: MyApp(),
      //child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  @override
  void initState() {
    super.initState();
    //getLicao();
  }

  //bool _loading = false;

  Pg pg = Pg(
    id: 40,
    uid: 'Db4jFXiw31ZsjZmpsyazao0w6293',
    idModulo: 1,
    nLicao: 1,
    nDevocional: 1,
    data: '23/08/2025',
    horarioNot: '',
  );

  /*Future getLicao() async {
    Licaos licao = await storePg.getListLicoes(pg);

    setState(() {
      licao = licao;
      _loading = true;
    });
  }*/

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder:
          (_) => MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            title: 'Side by Side ${!isMobile ? ' ${platformName()}' : ''}',
            /*home: PageFlipBook(
              usuario: Usuario(
                uid: 'Db4jFXiw31ZsjZmpsyazao0w6293',
                nome: 'Cleideane Sales',
                email: 'cleideanesales66@gmail.com',
                senha: '123456',
                telefone: '85985651654',
                pais: 'Brasil',
                estado: 'CE',
                cidade: 'Maranguape',
                data: '23/08/2025',
                ativo: 1,
                foto: '',
                background: '',
                tokenAlert: '',
              ),
              pg: pg,
              modulo: Modulos(
                id: 1,
                title: 'Trilha',
                subtitle: '',
                descricao: '',
                parte1: '',
                parte2: '',
                parte3: '',
                capa: '',
              ),
              licao: Licaos(
                id: 1,
                idClico: 1,
                idModulo: 1,
                nLicao: 8,
                qtdDevocional: 0,
                title: 'Deus Existe',
                subtitle: '',
                capa: 'https://i.ibb.co/C7psVHb/capa-trilha.png',
                icon: 'https://i.ibb.co/yR9tQWw/trilha-icon.png',
              ),
              idProgresso: 12,
              initialPage: 5,
            ),*/
            home: ASplashScreen(),
            theme:
                !appStore.isDarkModeOn
                    ? AppThemeData.lightTheme
                    : AppThemeData.darkTheme,
            scrollBehavior: SBehavior(),
            /*supportedLocales: LanguageDataModel.languageLocales(),
        localeResolutionCallback: (locale, supportedLocales) => locale,*/
          ),
    );
  }
}
