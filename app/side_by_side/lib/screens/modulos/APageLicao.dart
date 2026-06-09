// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:side_by_side/components/comentarios/ADiscussionLicaoComponent.dart';
import 'package:side_by_side/data/licao_detalhada.dart';
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
import 'package:side_by_side/utils/AConstants.dart';
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
  bool naoMostrarNovamente = false;
  TimeOfDay? horarioSelecionado;

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

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      bool naoMostrar = prefs.getBool('naoMostrarHorario') ?? false;

      naoMostrar
          ? ()
          : widget.pg.horarioNot == ''
          ? mostrarAlertaHorario(context)
          : ();
    });
  }

  void mostrarAlertaHorario(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,

      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),

              title: const Text(
                '🔔 Lembrete da Lição',
                textAlign: TextAlign.center,
              ),

              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Selecione um horário para receber um alerta para fazer a lição.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 24),

                  InkWell(
                    borderRadius: BorderRadius.circular(16),

                    onTap: () async {
                      TimeOfDay? horario = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );

                      if (horario != null) {
                        setState(() {
                          horarioSelecionado = horario;
                        });
                      }
                    },

                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey.shade200,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.access_time),

                          const SizedBox(width: 10),

                          Text(
                            horarioSelecionado == null
                                ? 'Selecionar horário'
                                : horarioSelecionado!.format(context),

                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  CheckboxListTile(
                    value: naoMostrarNovamente,

                    onChanged: (value) async {
                      setState(() {
                        naoMostrarNovamente = value ?? false;
                      });

                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      await prefs.setBool(
                        'naoMostrarHorario',
                        naoMostrarNovamente,
                      );
                    },

                    title: const Text('Não mostrar novamente'),

                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              ),

              actionsAlignment: MainAxisAlignment.spaceBetween,

              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Depois'),
                ),

                ElevatedButton(
                  onPressed: () async {
                    if (horarioSelecionado == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Selecione um horário')),
                      );
                      return;
                    } else {
                      String horario_selecionado =
                          '${horarioSelecionado!.hour}:${horarioSelecionado!.minute}';

                      await storePg
                          .editarHorarioNotificacao(
                            widget.usuario.uid,
                            widget.pg.id,
                            horario_selecionado,
                          )
                          .then((value) {
                            if (value) {
                              //sucesso
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Sucesso'),
                                  backgroundColor: appColorPrimary,
                                ),
                              );
                              Navigator.pop(context);
                            } else {
                              // algum erro//sucesso
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Erro'),
                                  backgroundColor: appColorPrimary,
                                ),
                              );
                              Navigator.pop(context);
                            }
                          });
                    }

                    // SALVAR HORÁRIO
                    // salvar no firebase/sharedpreferences/etc
                  },

                  child: const Text('Salvar'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  List<Devocional> devocionais = [];
  List<Devocional> devocionais_hj = [];
  List<Devocional> devocionais_antigo = [];
  List<ProgressoDevocional> checksDevocionais = [];

  getinfo() async {
    await storePg.getPgId(widget.usuario.uid);

    await storePg.progress(
      widget.usuario.uid,
      widget.pg.id.toString(),
      widget.modulo.id.toString(),
      widget.licao.nLicao.toString(),
    );

    await storePg.progressDevocionais(
      widget.usuario.uid,
      widget.pg.id.toString(),
      widget.modulo.id.toString(),
      widget.licao.nLicao.toString(),
    );

    List<ProgressoDevocional> progresso_devocionais =
        storePg.progressoDevocionaisNotifier.value;

    ProgressoDevocional ultimo = progresso_devocionais.reduce(
      (a, b) => a.dia > b.dia ? a : b,
    );

    int ultimo_dia = ultimo.dia;

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

      devocionais_hj =
          storePg
              .getDevocionais(widget.modulo.id, widget.licao.id)
              .where(
                (element) =>
                    element.idModulo == widget.modulo.id &&
                    element.idLicao == widget.licao.nLicao &&
                    element.dia == ultimo_dia,
              )
              .toList();

      devocionais_antigo =
          storePg
              .getDevocionais(widget.modulo.id, widget.licao.id)
              .where(
                (element) =>
                    element.idModulo == widget.modulo.id &&
                    element.idLicao == widget.licao.nLicao &&
                    element.dia < ultimo_dia,
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

  List<bool> isExpandedDHJ = [false, false, false, false, false, false];
  List<bool> isExpandedDA = [false, false, false, false, false, false];
  bool isExpanded_2 = false;
  bool isExpanded_3 = false;
  bool isExpanded_4 = false;

  @override
  Widget build(BuildContext context) {
    List<Versiculos> versiculo =
        versiculos_modulos
            .where(
              (element) =>
                  element.idModulo == widget.modulo.id &&
                  element.nLicao.contains(widget.licao.nLicao),
            )
            .toList();

    List<Misterios> misterios =
        misterios_modulos
            .where(
              (element) =>
                  element.idModulo == widget.modulo.id &&
                  element.nLicao.contains(widget.licao.nLicao),
            )
            .toList();

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
                  child: Center(
                    child: CircularProgressIndicator(
                      color:
                          appStore.isDarkModeOn
                              ? appColorPrimary
                              : appColorSecondary,
                    ),
                  ),
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
                              color: appColorSecondary,
                              child: const Icon(
                                Icons.arrow_back_ios_outlined,
                                color: appTextColorWhite,
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
                                  color: appColorSecondary,
                                  child: IconButton(
                                    icon: Icon(
                                      isLiked
                                          ? Icons.favorite
                                          : Icons.favorite_border_outlined,
                                      color:
                                          isLiked
                                              ? Colors.red
                                              : appTextColorWhite,
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
                                        await getinfo();
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
                                  color: appColorSecondary,
                                  child: IconButton(
                                    icon: Icon(
                                      isSaved
                                          ? Icons.bookmark
                                          : Icons.bookmark_border_outlined,
                                      color:
                                          isSaved
                                              ? appColorPrimaryDarkLight
                                              : appTextColorWhite,
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
                                        await getinfo();
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
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network(
                                widget.licao.icon,
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
                                                  initialPage: 0,
                                                ),
                                          ),
                                        ),
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 40,
                              width: 40,
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

                    // Devocionais
                    progresso.first.check == 1
                        ? Column(
                          children: [
                            const SizedBox(height: 16),

                            // Devocional do dia
                            devocionais.isEmpty
                                ? Center(
                                  child: Text(
                                    'Estamos trabalhando para adicionar novos devocionais',
                                    style: colorPrimaryRegular14,
                                  ),
                                )
                                : ListView.builder(
                                  itemCount: devocionais_hj.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context, index) {
                                    //bool check = temprogresso == 0 ? false : true;

                                    int temprogresso =
                                        checksDevocionais
                                            .where(
                                              (element) =>
                                                  element.dia ==
                                                  devocionais_hj[index].dia,
                                            )
                                            .length;

                                    final tem = checksDevocionais.any(
                                      (progresso) =>
                                          progresso.dia ==
                                              devocionais_hj[index].dia &&
                                          progresso.checkDevocional == 1,
                                    );

                                    return Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 8.0,
                                      ),
                                      child: AnimatedSize(
                                        duration: const Duration(
                                          milliseconds: 300,
                                        ),
                                        curve: Curves.easeInOut,
                                        alignment: Alignment.topCenter,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isExpandedDHJ[index] =
                                                  !isExpandedDHJ[index];
                                            });
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                            child: Container(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width,
                                              color: appColorPrimary,
                                              /*!tem
                                                      ? appStore.isDarkModeOn
                                                          ? context.cardColor
                                                          : appetitAppContainerColor
                                                      : appStore.isDarkModeOn
                                                      ? context.cardColor
                                                      : appetitAppContainerColor2*/
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 8,
                                                    ),
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(
                                                            context,
                                                          ).size.width,
                                                      child: Text(
                                                        'Devocional Diário',
                                                        style:
                                                            colorPrimaryBold18,
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Text(
                                                          'Dia ${devocionais_hj[index].dia}',
                                                          style: TextStyle(
                                                            color:
                                                                appColorSecondary,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        SizedBox(
                                                          width: 150,
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                devocionais_hj[index]
                                                                    .texto
                                                                    .toString(),
                                                                style: TextStyle(
                                                                  fontSize: 14,
                                                                  color:
                                                                      temprogresso ==
                                                                              0
                                                                          ? Colors
                                                                              .grey
                                                                              .shade500
                                                                          : context
                                                                              .iconColor,
                                                                ),
                                                                maxLines:
                                                                    isExpandedDHJ[index]
                                                                        ? null
                                                                        : 1,
                                                                overflow:
                                                                    isExpandedDHJ[index]
                                                                        ? TextOverflow
                                                                            .visible
                                                                        : TextOverflow
                                                                            .ellipsis,
                                                              ),

                                                              isExpandedDHJ[index]
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
                                                                                appColorSecondary,
                                                                          ),
                                                                        );
                                                                      } else {
                                                                        if (progresso.first.check ==
                                                                            0) {
                                                                          ScaffoldMessenger.of(
                                                                            context,
                                                                          ).showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Você precisa concluir a aula',
                                                                              ),
                                                                              backgroundColor:
                                                                                  appColorSecondary,
                                                                            ),
                                                                          );
                                                                        } else {
                                                                          await atualizar_devocionais(
                                                                            widget.usuario.uid,
                                                                            widget.pg.id.toString(),
                                                                            devocionais_hj[index].dia.toString(),
                                                                            '1',
                                                                          );

                                                                          setState(() {
                                                                            isExpandedDHJ[index] =
                                                                                !isExpandedDHJ[index];
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
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.check,
                                                                            color:
                                                                                tem
                                                                                    ? Colors.black
                                                                                    : Colors.grey.shade500,
                                                                          ),
                                                                          Text(
                                                                            'Concluído',
                                                                            style: TextStyle(
                                                                              color:
                                                                                  tem
                                                                                      ? Colors.black
                                                                                      : Colors.grey.shade500,
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
                                                              isExpandedDHJ[index] =
                                                                  !isExpandedDHJ[index];
                                                            });
                                                          },
                                                          icon: Icon(
                                                            isExpandedDHJ[index]
                                                                ? Icons
                                                                    .keyboard_arrow_up
                                                                : Icons
                                                                    .keyboard_arrow_down,
                                                            color:
                                                                appColorSecondary,
                                                          ),
                                                        ),
                                                      ],
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

                            // Mistérios
                            misterios.isEmpty
                                ? Center(
                                  child: Text(
                                    'Estamos trabalhando para adicionar novos mistérios',
                                    style: colorPrimaryRegular14,
                                  ),
                                )
                                : Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 8.0,
                                      ),
                                      child: AnimatedSize(
                                        duration: const Duration(
                                          milliseconds: 300,
                                        ),
                                        curve: Curves.easeInOut,
                                        alignment: Alignment.topCenter,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isExpanded_4 = !isExpanded_4;
                                            });
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                            child: Container(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width,
                                              color: appColorPrimary,

                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 8,
                                                    ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'image/icons/misterios.png',
                                                      height: 60,
                                                      width: 60,
                                                      fit: BoxFit.fill,
                                                    ),

                                                    const SizedBox(width: 20),

                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                              8.0,
                                                            ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Mistério ${misterios.first.titulo}',
                                                              style:
                                                                  colorPrimaryBold18,
                                                            ),

                                                            const SizedBox(
                                                              height: 8,
                                                            ),

                                                            AnimatedSize(
                                                              duration:
                                                                  const Duration(
                                                                    milliseconds:
                                                                        300,
                                                                  ),
                                                              curve:
                                                                  Curves
                                                                      .easeInOut,
                                                              child: Column(
                                                                children: List.generate(
                                                                  isExpanded_4
                                                                      ? misterios
                                                                          .first
                                                                          .misterios
                                                                          .length
                                                                      : 1,
                                                                  (index) {
                                                                    int numero =
                                                                        index +
                                                                        1;

                                                                    return Padding(
                                                                      padding: const EdgeInsets.only(
                                                                        bottom:
                                                                            6,
                                                                      ),
                                                                      child: Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            '$numero. ',
                                                                            style: TextStyle(
                                                                              color:
                                                                                  Colors.orange.shade600,
                                                                              fontSize:
                                                                                  18,
                                                                              fontWeight:
                                                                                  FontWeight.w700,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child: Text(
                                                                              misterios.first.misterios[index],
                                                                              style:
                                                                                  colorPrimaryRegulard18,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                    IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          isExpanded_4 =
                                                              !isExpanded_4;
                                                        });
                                                      },
                                                      icon: Icon(
                                                        isExpanded_4
                                                            ? Icons
                                                                .keyboard_arrow_up
                                                            : Icons
                                                                .keyboard_arrow_down,
                                                        color:
                                                            appColorSecondary,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          ],
                        )
                        : Container(),

                    const SizedBox(height: 8),

                    //Bate Papo com Pais - trocar versiculo.isEmpty pela variavel do site
                    storePg.perguntePai.value.isEmpty
                        ? Container()
                        : Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: AnimatedSize(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            alignment: Alignment.topCenter,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpanded_2 = !isExpanded_2;
                                });
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  color: appColorPrimary,
                                  /*appStore.isDarkModeOn
                                          ? context.cardColor
                                          : appetitAppContainerColor*/
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 8,
                                    ),
                                    child: Row(
                                      /*crossAxisAlignment:
                                          CrossAxisAlignment.center,*/
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'image/bate-papo.png',
                                          height: 60,
                                          width: 60,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 1),
                                        Column(
                                          children: [
                                            SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.5,
                                              child: Text(
                                                'Pergunte para seu responsável:',
                                                style: colorPrimaryBold18,
                                              ),
                                            ),
                                            SizedBox(height: 4),
                                            SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.5,
                                              child: ValueListenableBuilder<
                                                String
                                              >(
                                                valueListenable:
                                                    storePg.perguntePai,
                                                builder: (
                                                  context,
                                                  value,
                                                  child,
                                                ) {
                                                  return Text(
                                                    value,
                                                    style:
                                                        colorPrimaryRegulard18,
                                                    maxLines:
                                                        isExpanded_2 ? null : 1,
                                                    overflow:
                                                        isExpanded_2
                                                            ? TextOverflow
                                                                .visible
                                                            : TextOverflow
                                                                .ellipsis,
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isExpanded_2 = !isExpanded_2;
                                            });
                                          },
                                          icon: Icon(
                                            isExpanded_2
                                                ? Icons.keyboard_arrow_up
                                                : Icons.keyboard_arrow_down,
                                            color:
                                                appColorSecondary /*Colors.orange.shade600*/,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                    const SizedBox(height: 8),

                    //Versículo para memorização
                    versiculo.isEmpty
                        ? Container()
                        : Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: AnimatedSize(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            alignment: Alignment.topCenter,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpanded_3 = !isExpanded_3;
                                });
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  color: appColorPrimary,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 8,
                                    ),
                                    child: Row(
                                      /*crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,*/
                                      children: [
                                        Image.asset(
                                          'image/icons/versiculo.png',
                                          height: 50,
                                          width: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 5),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            /*mainAxisAlignment:
                                                MainAxisAlignment.center,*/
                                            children: [
                                              SizedBox(
                                                width:
                                                    MediaQuery.of(
                                                      context,
                                                    ).size.width *
                                                    0.5,
                                                child: Text(
                                                  'Versículo para Memorização',
                                                  style: colorPrimaryBold18,
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                    MediaQuery.of(
                                                      context,
                                                    ).size.width *
                                                    0.4,
                                                child: Text(
                                                  versiculo.first.versiculo,
                                                  style: colorPrimaryRegulard18,
                                                  textAlign: TextAlign.center,
                                                  maxLines:
                                                      isExpanded_3 ? null : 1,
                                                  overflow:
                                                      isExpanded_3
                                                          ? TextOverflow.visible
                                                          : TextOverflow
                                                              .ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isExpanded_3 = !isExpanded_3;
                                            });
                                          },
                                          icon: Icon(
                                            isExpanded_3
                                                ? Icons.keyboard_arrow_up
                                                : Icons.keyboard_arrow_down,
                                            color: appColorSecondary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                    const SizedBox(height: 8),

                    // Devocionais ANtigos
                    devocionais_antigo.isEmpty
                        ? Container()
                        : Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              color: appColorPrimary,
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      'Devocionais Passados',
                                      style: colorPrimaryBold18,
                                    ),
                                  ),
                                  ListView.builder(
                                    itemCount: devocionais_antigo.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    itemBuilder: (context, index) {
                                      int temprogresso =
                                          checksDevocionais
                                              .where(
                                                (element) =>
                                                    element.dia ==
                                                    devocionais_antigo[index]
                                                        .dia,
                                              )
                                              .length;

                                      final tem = checksDevocionais.any(
                                        (progresso) =>
                                            progresso.dia ==
                                                devocionais_antigo[index].dia &&
                                            progresso.checkDevocional == 1,
                                      );

                                      return AnimatedSize(
                                        duration: const Duration(
                                          milliseconds: 300,
                                        ),
                                        curve: Curves.easeInOut,
                                        alignment: Alignment.topCenter,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isExpandedDA[index] =
                                                  !isExpandedDA[index];
                                            });
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                            child: Container(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.8,
                                              color: appColorPrimary,
                                              /*!tem
                                                      ? appStore.isDarkModeOn
                                                          ? context.cardColor
                                                          : appetitAppContainerColor
                                                      : appStore.isDarkModeOn
                                                      ? context.cardColor
                                                      : appetitAppContainerColor2*/
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 8,
                                                    ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      'Dia ${devocionais_antigo[index].dia}',
                                                      style: TextStyle(
                                                        color:
                                                            appColorSecondary,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    SizedBox(
                                                      width: 150,
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            devocionais_antigo[index]
                                                                .texto
                                                                .toString(),
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  temprogresso ==
                                                                          0
                                                                      ? Colors
                                                                          .grey
                                                                          .shade500
                                                                      : context
                                                                          .iconColor,
                                                            ),
                                                            maxLines:
                                                                isExpandedDA[index]
                                                                    ? null
                                                                    : 1,
                                                            overflow:
                                                                isExpandedDA[index]
                                                                    ? TextOverflow
                                                                        .visible
                                                                    : TextOverflow
                                                                        .ellipsis,
                                                          ),

                                                          isExpandedDA[index]
                                                              ? GestureDetector(
                                                                onTap: () async {
                                                                  if (progresso
                                                                      .isEmpty) {
                                                                    ScaffoldMessenger.of(
                                                                      context,
                                                                    ).showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                              'Você precisa concluir a aula',
                                                                            ),
                                                                        backgroundColor:
                                                                            appColorSecondary,
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
                                                                              appColorSecondary,
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      await atualizar_devocionais(
                                                                        widget
                                                                            .usuario
                                                                            .uid,
                                                                        widget
                                                                            .pg
                                                                            .id
                                                                            .toString(),
                                                                        devocionais_antigo[index]
                                                                            .dia
                                                                            .toString(),
                                                                        '1',
                                                                      );

                                                                      setState(() {
                                                                        isExpandedDA[index] =
                                                                            !isExpandedDA[index];
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
                                                                        Icons
                                                                            .check,
                                                                        color:
                                                                            tem
                                                                                ? Colors.black
                                                                                : Colors.grey.shade500,
                                                                      ),
                                                                      Text(
                                                                        'Concluído',
                                                                        style: TextStyle(
                                                                          color:
                                                                              tem
                                                                                  ? Colors.black
                                                                                  : Colors.grey.shade500,
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
                                                          isExpandedDA[index] =
                                                              !isExpandedDA[index];
                                                        });
                                                      },
                                                      icon: Icon(
                                                        isExpandedDA[index]
                                                            ? Icons
                                                                .keyboard_arrow_up
                                                            : Icons
                                                                .keyboard_arrow_down,
                                                        color:
                                                            appColorSecondary,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                                  fillColor: appColorPrimary,
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
                                  color: appColorSecondary,
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
