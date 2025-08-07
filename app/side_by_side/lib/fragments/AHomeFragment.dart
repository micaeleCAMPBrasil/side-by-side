// ignore_for_file: file_names
import 'package:provider/provider.dart';
import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/modulos/ADetalheModulosScreen.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/main.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/utils/AConstants.dart';

import '../screens/modulos/APageLicao.dart';

class AHomeFragment extends StatefulWidget {
  const AHomeFragment({super.key});

  @override
  State<AHomeFragment> createState() => _AHomeFragmentState();
}

class _AHomeFragmentState extends State<AHomeFragment> {
  var bookmarkSelection = true;

  @override
  Widget build(BuildContext context) {
    Usuario usuario = Provider.of<UsuarioProvider>(context).getUsuario;
    List<Licaos> listLicoes = Provider.of<PgProvider>(context).listLicoes;
    Pg pg = Provider.of<PgProvider>(context).getPg;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child:
                usuario.foto == ''
                    ? Image.asset(
                      'assets/image/nopicture.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    )
                    : Image.network(
                      usuario.foto,
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
          ),
        ),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            //listLicoes.length.toString(),
            'Side by Side',
            style: colorPrimaryBold20,
          ),
        ),
        /*actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ANotificationFragment(),
                  ),
                );
              },
              icon: Icon(
                Icons.notifications_outlined,
                size: 27,
                color: context.iconColor,
              ),
            ),
          ),
        ],*/
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Progresso',
                    style:
                        appStore.isDarkModeOn
                            ? colorPrimaryWhite20
                            : colorPrimaryMedium20,
                  ),
                  TextButton(
                    onPressed: () {
                      List<Modulos> moduloQuery =
                          getModulos()
                              .where(
                                (element) =>
                                    element.id == listLicoes.first.idModulo,
                              )
                              .toList();

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ADetalheModulosScreen(
                                modulo: moduloQuery.first,
                                index: 3,
                              ),
                        ),
                      );
                    },
                    child: Text(
                      'Visualizar tudo',
                      style: TextStyle(
                        color:
                            appStore.isDarkModeOn
                                ? Colors.grey
                                : Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 16),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children:
                    listLicoes.map((e) {
                      List<Modulos> modulo =
                          getModulos()
                              .where((element) => element.id == e.idModulo)
                              .toList();

                      return cardLicao(usuario, pg, modulo[0], e);
                    }).toList(),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'O que você precisa?',
                    style:
                        appStore.isDarkModeOn
                            ? colorPrimaryWhite20
                            : colorPrimaryMedium20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  Row(
                    children:
                        getbotoesRapidos(context).map((e) {
                          return Stack(
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
                                    e.icon,
                                    const SizedBox(width: 4),
                                    Text(
                                      e.title.toString(),
                                      style: colorPrimaryBold16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ).onTap(e.onTap);
                        }).toList(),
                  ),
                ],
              ),
            ),
            /*const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Módulos',
                    style: appStore.isDarkModeOn
                        ? colorPrimaryWhite20
                        : colorPrimaryMedium20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            AModuloComponent(),*/
          ],
        ),
      ),
    );
  }

  Widget cardLicao(Usuario usuario, Pg pg, Modulos modulo, Licaos licao) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(35),
        /*onTap: () {
          debugPrint('lição ${licao.id}');
        },*/
        onTap:
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => APageLicao(
                      modulo: modulo,
                      licao: licao,
                      pg: pg,
                      usuario: usuario,
                    ),
              ),
            ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Stack(
            children: [
              Image(
                image: AssetImage(modulo.capa.toString()),
                height: 180,
                width: 270,
                color: Colors.black.withOpacity(0.4),
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.cover,
                errorBuilder: (context, url, error) => const Icon(Icons.error),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: CircularProgressIndicator(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  );
                },
              ),
              Positioned(
                top: 16,
                left: 16,
                child: SizedBox(
                  height: 40,
                  width: 156,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white24.withOpacity(0.25),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: ClipOval(
                            child: Image.network(
                              licao.icon.toString(),
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          modulo.title.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 80,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(licao.subtitle.toString(), style: colorWhiteBold20),
                    Text(licao.title.toString(), style: colorWhiteRegulard18),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
