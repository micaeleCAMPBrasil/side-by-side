// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/AMessagemScreen.dart';
import 'package:side_by_side/screens/login/ALoginScreen.dart';
import 'package:side_by_side/screens/modulos/ADetalheModulosScreen.dart';
import 'package:side_by_side/screens/modulos/APageDesafio.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/main.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/auth_service.dart';
import 'package:side_by_side/utils/http_client.dart';

import '../screens/modulos/APageLicao.dart';

class AHomeFragment extends StatefulWidget {
  const AHomeFragment({super.key});

  @override
  State<AHomeFragment> createState() => _AHomeFragmentState();
}

class _AHomeFragmentState extends State<AHomeFragment> {
  var bookmarkSelection = true;

  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  bool loading = false;
  int totalCrianca = 0;

  @override
  void initState() {
    super.initState();
    verificarLogin();
  }

  void verificarLogin() {
    User? userFire = AuthService.gerarUserFirebase();

    if (userFire == null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ALoginScreen()),
      );
    } else {
      getinfopg(userFire.uid);
    }
  }

  getinfopg(String uid) async {
    debugPrint('chamndo a função na home de consultar as informações do pg');
    await storePg.getPgId(uid);
    setState(() {
      totalCrianca = storePg.listCriancas.value.length;
      loading = true;
    });
  }

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
            style:
                appStore.isDarkModeOn ? colorWhiteBold20 : colorPrimaryBold20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child:
            loading
                ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 0,
                      ),
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
                                            element.id ==
                                            listLicoes.first.idModulo,
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

                    // lista de lições
                    SingleChildScrollView(
                      padding: const EdgeInsets.only(left: 16),
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children:
                            listLicoes.map((e) {
                              List<Modulos> modulo =
                                  getModulos()
                                      .where(
                                        (element) => element.id == e.idModulo,
                                      )
                                      .toList();

                              return cardLicao(
                                usuario,
                                pg,
                                modulo[0],
                                e,
                                totalCrianca,
                              );
                            }).toList(),
                      ),
                    ),

                    // Momento de oração
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: cardMomentoOracao(),
                    ),

                    // Desafio
                    ValueListenableBuilder<List<ProgressoLicao>>(
                      valueListenable: storePg.progressoLicao,
                      builder: (context, list, child) {
                        return list.isEmpty || list.first.check == 0
                            ? Container()
                            : Padding(
                              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: cardDesafio(usuario, pg),
                            );
                      },
                    ),

                    // o que você precisa?
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
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
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
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
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
                                        margin: const EdgeInsets.only(
                                          right: 16.0,
                                        ),
                                        width: 150,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color:
                                              appStore.isDarkModeOn
                                                  ? appColorSecondary
                                                  : appColorPrimary,
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            e.icon,
                                            const SizedBox(width: 4),
                                            Text(
                                              e.title.toString(),
                                              style:
                                                  appStore.isDarkModeOn
                                                      ? colorWhiteBold16
                                                      : colorPrimaryBold16,
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
                  ],
                )
                : Center(
                  child: CircularProgressIndicator(
                    color:
                        appStore.isDarkModeOn
                            ? appColorPrimary
                            : appColorSecondary,
                  ),
                ),
      ),
    );
  }

  Widget cardMomentoOracao() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: appStore.isDarkModeOn ? appColorSecondary : appColorPrimary,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'image/icons/trilha/24.png',
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Momento de Oração:',
                      style:
                          appStore.isDarkModeOn
                              ? colorWhiteBold18
                              : colorPrimaryBold18,
                    ),
                  ),
                  SizedBox(height: 4),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ValueListenableBuilder<String>(
                      valueListenable: storePg.momentoOracao,
                      builder: (context, value, child) {
                        return Text(
                          value,
                          style:
                              appStore.isDarkModeOn
                                  ? colorWhiteRegulard18
                                  : colorPrimaryRegulard18,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardDesafio(Usuario usuario, Pg pg) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: appStore.isDarkModeOn ? appColorSecondary : appColorPrimary,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'image/icons/desafio.png',
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Pronto para o desafio?',
                      style:
                          appStore.isDarkModeOn
                              ? colorWhiteBold18
                              : colorPrimaryBold18,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ValueListenableBuilder<Desafio?>(
                          valueListenable: storePg.desafio,
                          builder: (context, value, child) {
                            if (value == null) {
                              return Container();
                            } else {
                              return Text(
                                value.titulo,
                                style:
                                    appStore.isDarkModeOn
                                        ? colorWhiteRegular16
                                        : colorPrimaryRegular16,
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => APageDesafio(usuario: usuario, pg: pg),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color:
                        appStore.isDarkModeOn
                            ? appColorPrimary
                            : appColorSecondary,
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.play_arrow,
                      color:
                          appStore.isDarkModeOn ? Colors.black45 : Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardLicao(
    Usuario usuario,
    Pg pg,
    Modulos modulo,
    Licaos licao,
    int totalCrianca,
  ) {
    final bool bloqueado = pg.nLicao < licao.id;
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(35),
        /*onTap: () {
          debugPrint('lição ${licao.id}');
        },*/
        onTap:
            () =>
                bloqueado
                    ? {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor:
                              appStore.isDarkModeOn
                                  ? appColorSecondary
                                  : appColorPrimary,
                          content: Text(
                            'Essa lição será liberada na próxima semana',
                            style:
                                appStore.isDarkModeOn
                                    ? colorWhiteRegular16
                                    : colorPrimaryRegular16,
                          ),
                        ),
                      ),
                    }
                    : totalCrianca == 0
                    ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AMessagemScreen(),
                      ),
                    )
                    : Navigator.push(
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
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              // CONTEÚDO NORMAL
              AbsorbPointer(
                absorbing: bloqueado,
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage(modulo.capa.toString()),
                      height: 140,
                      width: 270,
                      color: Colors.black.withOpacity(0.4),
                      colorBlendMode: BlendMode.darken,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (context, url, error) => const Icon(Icons.error),
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
                      top: 60,
                      right: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            licao.subtitle.toString(),
                            style: colorWhiteBold20,
                          ),
                          Text(
                            licao.title.toString(),
                            style: colorWhiteRegulard18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // OVERLAY ESCURO
              if (bloqueado)
                Container(
                  height: 140,
                  width: 270,
                  color: Colors.black.withOpacity(0.55),
                ),

              // ÍCONE DE CADEADO
              if (bloqueado)
                const Positioned.fill(
                  child: Center(
                    child: Icon(Icons.lock, color: Colors.white, size: 45),
                  ),
                ),
              /*Image(
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
                  //width: double.infinity,
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
                          style: TextStyle(color: Colors.white),
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
                    Text(
                      licao.subtitle.toString(),
                      style:
                          pg.nLicao == licao.id
                              ? colorWhiteBold20
                              : colorSecondaryBold20,
                    ),
                    Text(licao.title.toString(), style: colorWhiteRegulard18),
                  ],
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
