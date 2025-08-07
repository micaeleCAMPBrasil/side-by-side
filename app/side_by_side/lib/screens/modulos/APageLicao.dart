// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:side_by_side/components/comentarios/ADiscussionLicaoComponent.dart';
import 'package:side_by_side/model/devocional.dart';
import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/ADashboardScreen.dart';
import 'package:side_by_side/screens/modulos/PageFilpBook.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/screens/modulos/ADiscussionLicaoScreen.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class APageLicao extends StatefulWidget {
  Usuario usuario;
  Pg pg;
  Modulos modulo;
  Licaos licao;

  APageLicao({
    super.key,
    required this.usuario,
    required this.pg,
    required this.modulo,
    required this.licao,
  });

  @override
  State<APageLicao> createState() => _APageLicaoState();
}

class _APageLicaoState extends State<APageLicao> {
  var image = Image.asset(
    'assets/image/appetit/p3.jpg',
    fit: BoxFit.cover,
    color: Colors.black.withOpacity(0.5),
    colorBlendMode: BlendMode.darken,
  );

  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  final TextEditingController _comentariosTextController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    getinfo();
  }

  List<Devocional> devocionais = [];
  List<ProgressoDevocional> checksDevocionais = [];

  getinfo() async {
    await storePg.getPgId(widget.usuario.uid);

    await storePg.progress(
      widget.usuario.uid,
      widget.pg.id.toString(),
      widget.modulo.id.toString(),
      widget.licao.id.toString(),
    );

    await storePg.progressDevocionais(
      widget.usuario.uid,
      widget.pg.id.toString(),
      widget.modulo.id.toString(),
      widget.licao.id.toString(),
    );

    setState(() {
      devocionais =
          storePg
              .getDevocionais(widget.modulo.id, widget.licao.id)
              .where(
                (element) =>
                    element.idModulo == widget.modulo.id &&
                    element.idLicao == widget.licao.nLicao,
              )
              .toList();

      checksDevocionais = storePg.progressoDevocionaisNotifier.value;
    });
  }

  atualizar_devocionais(
    String uid,
    String idPg,
    String dia,
    String check,
  ) async {
    debugPrint('uid $uid');
    debugPrint('idPg $idPg');
    debugPrint('idModulo ${widget.modulo.id}');
    debugPrint('idLicao ${widget.licao.id}');
    debugPrint('dia $dia');
    debugPrint('check $check');

    await storePg.addProgresso(
      uid,
      idPg,
      'progresso_licao',
      widget.modulo.id.toString(),
      widget.licao.id.toString(),
      dia,
      check,
    );

    getinfo();
  }

  List<bool> isExpanded = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    /*
            .where(
              (element) =>
                  element.idModulo == widget.modulo.id &&
                  element.nLicao == widget.licao.nLicao,
            )
            .toList();*/

    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ADashboardScreen()),
          );
          return false;
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: ValueListenableBuilder<List<ProgressoLicao>>(
            valueListenable: storePg.progressoNotifier,
            builder: (context, list, child) {
              if (list.isEmpty) {
                getinfo();
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  child: Center(child: CircularProgressIndicator()),
                );
              } else {
                final progresso = list.where(
                  (element) =>
                      element.idModulo == widget.modulo.id &&
                      element.nLicao == widget.licao.nLicao,
                );

                bool isLiked =
                    progresso.isEmpty
                        ? false
                        : progresso.first.like == 0
                        ? false
                        : true;
                bool isSaved =
                    progresso.isEmpty
                        ? false
                        : progresso.first.save == 0
                        ? false
                        : true;

                /*DetalhesModulos detalhes =
                    list_modulos
                        .where((element) => element.idModulo == widget.modulo.id)
                        .first;*/

                return Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).viewPadding.top),
                    //Top 3 button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: InkWell(
                            onTap:
                                () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ADashboardScreen(),
                                  ),
                                ),
                            borderRadius: BorderRadius.circular(25),
                            child: Container(
                              height: 50,
                              width: 50,
                              color:
                                  appStore.isDarkModeOn
                                      ? context.cardColor
                                      : appetitAppContainerColor,
                              child: const Icon(
                                Icons.arrow_back_ios_outlined,
                                color: appetitBrownColor,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  color:
                                      appStore.isDarkModeOn
                                          ? context.cardColor
                                          : appetitAppContainerColor,
                                  child: IconButton(
                                    icon: Icon(
                                      isLiked
                                          ? Icons.favorite
                                          : Icons.favorite_border_outlined,
                                      color:
                                          isLiked
                                              ? Colors.red
                                              : appetitBrownColor,
                                    ),
                                    onPressed: () async {
                                      if (progresso.isEmpty) {
                                      } else {
                                        setState(() {
                                          isLiked = !isLiked;
                                        });
                                        await storePg.like(
                                          widget.pg.id.toString(),
                                          widget.usuario.uid,
                                          progresso.first.id.toString(),
                                          isLiked,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  color:
                                      appStore.isDarkModeOn
                                          ? context.cardColor
                                          : appetitAppContainerColor,
                                  child: IconButton(
                                    icon: Icon(
                                      isSaved
                                          ? Icons.bookmark
                                          : Icons.bookmark_border_outlined,
                                      color:
                                          isSaved
                                              ? Colors.amber
                                              : appetitBrownColor,
                                    ),
                                    onPressed: () async {
                                      if (progresso.isEmpty) {
                                      } else {
                                        setState(() {
                                          isSaved = !isSaved;
                                        });
                                        await storePg.saved(
                                          widget.pg.id.toString(),
                                          widget.usuario.uid,
                                          progresso.first.id.toString(),
                                          isSaved,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    //Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Stack(
                        children: [
                          Image.asset(
                            widget.modulo.capa.toString(),
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Text(
                              widget.modulo.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    //Lição Informação
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network(
                                widget.licao.capa,
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.licao.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                SizedBox(
                                  width: 180,
                                  child: Text(
                                    widget.licao.subtitle,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                            onTap:
                                () =>
                                    progresso.isEmpty
                                        ? null
                                        : Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder:
                                                (context) => PageFlipBook(
                                                  usuario: widget.usuario,
                                                  pg: widget.pg,
                                                  modulo: widget.modulo,
                                                  licao: widget.licao,
                                                  idProgresso:
                                                      progresso.first.id,
                                                ),
                                          ),
                                        ),
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 40,
                              width: 80,
                              color:
                                  progresso.isEmpty
                                      ? Colors.grey.shade600
                                      : progresso.first.check == 0
                                      ? Colors.grey.shade600
                                      : Colors.green.shade600,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.play_arrow, color: Colors.white),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Devocionais
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Devocionais',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    devocionais.isEmpty
                        ? Text(
                          'Estamos trabalhando para adicionar novos devocionais',
                        )
                        : ListView.builder(
                          itemCount: devocionais.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            //bool check = temprogresso == 0 ? false : true;

                            int temprogresso =
                                checksDevocionais
                                    .where(
                                      (element) =>
                                          element.dia == devocionais[index].dia,
                                    )
                                    .length;

                            final tem = checksDevocionais.any(
                              (progresso) =>
                                  progresso.dia == devocionais[index].dia &&
                                  progresso.checkDevocional == 1,
                            );

                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: AnimatedSize(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                alignment: Alignment.topCenter,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isExpanded[index] = !isExpanded[index];
                                    });
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      color:
                                          !tem
                                              ? appStore.isDarkModeOn
                                                  ? context.cardColor
                                                  : appetitAppContainerColor
                                              : appStore.isDarkModeOn
                                              ? context.cardColor
                                              : appetitAppContainerColor2,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 8.0,
                                          horizontal: 8,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Dia ${index + 1}',
                                              style: TextStyle(
                                                color: Colors.orange.shade600,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            SizedBox(
                                              width: 200,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    devocionais[index].texto
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          temprogresso == 0
                                                              ? Colors
                                                                  .grey
                                                                  .shade500
                                                              : context
                                                                  .iconColor,
                                                    ),
                                                    maxLines:
                                                        isExpanded[index]
                                                            ? null
                                                            : 1,
                                                    overflow:
                                                        isExpanded[index]
                                                            ? TextOverflow
                                                                .visible
                                                            : TextOverflow
                                                                .ellipsis,
                                                  ),

                                                  isExpanded[index]
                                                      ? GestureDetector(
                                                        onTap: () async {
                                                          if (progresso
                                                              .isEmpty) {
                                                            ScaffoldMessenger.of(
                                                              context,
                                                            ).showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Você precisa concluir a aula',
                                                                ),
                                                                backgroundColor:
                                                                    appColorPrimary,
                                                              ),
                                                            );
                                                          } else {
                                                            if (progresso
                                                                    .first
                                                                    .check ==
                                                                0) {
                                                              ScaffoldMessenger.of(
                                                                context,
                                                              ).showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Você precisa concluir a aula',
                                                                  ),
                                                                  backgroundColor:
                                                                      appColorPrimary,
                                                                ),
                                                              );
                                                            } else {
                                                              await atualizar_devocionais(
                                                                widget
                                                                    .usuario
                                                                    .uid,
                                                                widget.pg.id
                                                                    .toString(),
                                                                devocionais[index]
                                                                    .dia
                                                                    .toString(),
                                                                '1',
                                                              );

                                                              setState(() {
                                                                isExpanded[index] =
                                                                    !isExpanded[index];
                                                              });
                                                            }
                                                          }
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                8.0,
                                                              ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons.check,
                                                                color:
                                                                    Colors
                                                                        .grey
                                                                        .shade500,
                                                              ),
                                                              Text(
                                                                'Concluído',
                                                                style: TextStyle(
                                                                  color:
                                                                      Colors
                                                                          .grey
                                                                          .shade500,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                      : Container(),
                                                ],
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  isExpanded[index] =
                                                      !isExpanded[index];
                                                });
                                              },
                                              icon: Icon(
                                                isExpanded[index]
                                                    ? Icons.keyboard_arrow_up
                                                    : Icons.keyboard_arrow_down,
                                                color: Colors.orange.shade600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),

                    const SizedBox(height: 8),

                    //Discussion title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Comentários',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        InkWell(
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => ADiscussionLicaoScreen(
                                        modulo: widget.modulo,
                                        licao: widget.licao,
                                      ),
                                ),
                              ),
                          child: const Text(
                            'View all',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        //List of elements
                        ADiscussionLicaoComponent(
                          modulo: widget.modulo,
                          licao: widget.licao,
                          limite: true,
                        ),
                        const SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Stack(
                            children: [
                              TextField(
                                controller: _comentariosTextController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  fillColor:
                                      appStore.isDarkModeOn
                                          ? context.cardColor
                                          : appetitAppContainerColor,
                                  filled: true,
                                  labelText: 'Escreva aqui',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                  onPressed: () async {
                                    DateTime now = DateTime.now();
                                    String formattedDate = DateFormat(
                                      'dd/MM/yyyy',
                                    ).format(now);
                                    String formattedTime = DateFormat(
                                      'kk:mm',
                                    ).format(now);

                                    // Instância do Firestore
                                    final FirebaseFirestore firestore =
                                        FirebaseFirestore.instance;

                                    // Documento principal (pai)
                                    final DocumentReference docRef =
                                        firestore
                                            .collection('CommentsLicoes')
                                            .doc();

                                    Map<String, dynamic> infoUser = {
                                      'uid': widget.usuario.uid,
                                      'nome': widget.usuario.nome,
                                      'foto': widget.usuario.foto,
                                    };

                                    // Adiciona o documento principal com dados iniciais
                                    await docRef.set({
                                      'comentario':
                                          _comentariosTextController.text,
                                      'TimeStamp': Timestamp.now(),
                                      'data': formattedDate,
                                      'time': formattedTime,
                                      'likes': [],
                                      'totalComentario': 0,
                                      'info_user': infoUser,
                                      'modulo': widget.modulo.id,
                                      'licao': widget.licao.nLicao,
                                    });

                                    _comentariosTextController.text = '';
                                  },
                                  icon: Icon(Icons.send_outlined),
                                  color: Colors.orange.shade600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
