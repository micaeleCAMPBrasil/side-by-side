// ignore_for_file: file_names

import 'package:provider/provider.dart';
import 'package:side_by_side/components/modulos/AModuloComponent.dart';
import 'package:side_by_side/main.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/modulos/ADetalheModulosScreen.dart';
import 'package:side_by_side/store/pg_store.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:side_by_side/utils/ADataProvider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:side_by_side/utils/http_client.dart';

// ignore: must_be_immutable
class AModuloPesquisaFragment extends StatefulWidget {
  Usuario usuario;
  AModuloPesquisaFragment({required this.usuario, super.key});

  @override
  State<AModuloPesquisaFragment> createState() =>
      _AModuloPesquisaFragmentState();
}

class _AModuloPesquisaFragmentState extends State<AModuloPesquisaFragment>
    with SingleTickerProviderStateMixin {
  late PageController pageController = PageController(initialPage: 0);

  var selectedItem = 0;

  final IFuncoes repository = IFuncoesPHP(client: HttpClient());

  final PgStore storePg = PgStore(
    repository: IFuncoesPHP(client: HttpClient()),
  );

  late TabController _tabController;

  List<Modulos> todos = [];
  List<Modulos> favoritos = [];
  List<Modulos> salvos = [];

  bool loading = true;

  carregarDados() async {
    List<Modulos> list_todos = getModulos();

    List<Modulos> list_favoritos = await repository.getListModulosFavs(
      widget.usuario.uid,
    );

    List<Modulos> list_salvos = await repository.getListModulosSaves(
      widget.usuario.uid,
    );

    getinfopg(widget.usuario.uid);

    setState(() {
      todos = list_todos;
      favoritos = list_favoritos;
      salvos = list_salvos;

      loading = false;
    });
  }

  getinfopg(String uid) async {
    await storePg.getPgId(uid);
  }

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);

    carregarDados();
  }

  void onTapAction(index) {
    setState(() => selectedItem = index);
  }

  final pontos = [
    const Offset(0.10, 0.10), // Trilha
    const Offset(0.75, 0.23), // Mergulho
    const Offset(0.45, 0.40), // Santuário
    const Offset(0.10, 0.65), // Arco
    const Offset(0.75, 0.80), // Estação Final
  ];

  @override
  Widget build(BuildContext context) {
    Pg pg = Provider.of<PgProvider>(context).getPg;

    return DefaultTabController(
      length: categoriasPesquias.length,
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          leadingWidth: 0,
          toolbarHeight: 10,
          elevation: 0,
          backgroundColor: appColorSecondary,
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs:
                categoriasPesquias
                    .map(
                      (e) => Row(
                        children: [
                          Text(e.text.toString(), style: colorWhiteSemiBold18),
                        ],
                      ).paddingSymmetric(vertical: 16),
                    )
                    .toList(),
          ),
        ),
        body: /*TabBarView(
          children:
              categoriasPesquias.map((e) {
                return AModuloComponent(
                  physics: const AlwaysScrollableScrollPhysics(),
                  index: int.parse(e.image.toString()),
                ).paddingTop(16);
              }).toList(),
        ),*/
            loading
                ? Center(
                  child: CircularProgressIndicator(
                    color:
                        appStore.isDarkModeOn
                            ? appColorPrimary
                            : appColorSecondary,
                  ),
                )
                : TabBarView(
                  controller: _tabController,
                  children: [
                    /*listaModulos(todos),*/
                    ModulosPage(MediaQuery.of(context).size, todos, pg),
                    AModuloComponent(
                      physics: const AlwaysScrollableScrollPhysics(),
                      index: 1,
                      //index: int.parse(e.image.toString()),
                      modulos: favoritos,
                    ).paddingTop(16),
                    AModuloComponent(
                      physics: const AlwaysScrollableScrollPhysics(),
                      index: 2,
                      //index: int.parse(e.image.toString()),
                      modulos: salvos,
                    ).paddingTop(16),
                    //listaModulos(favoritos),
                    //listaModulos(salvos),
                  ],
                ),
      ),
    );
  }

  Widget ModulosPage(Size size, List<Modulos> modulos, Pg pg) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = Size(constraints.maxWidth, constraints.maxHeight);

        return Stack(
          children: [
            Positioned.fill(
              child: CustomPaint(painter: JourneyPainter(pontos)),
            ),

            ...List.generate(
              modulos.length,
              (index) => buildModulo(
                modulo: modulos[index],
                pg: pg,
                ponto: pontos[index],
                size: size,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildModulo({
    required Modulos modulo,
    required Pg pg,
    required Offset ponto,
    required Size size,
  }) {
    final circleSize = size.width * 0.18;

    bool concluido = pg.idModulo > modulo.id;
    bool atual = pg.idModulo == modulo.id;
    bool bloqueado = pg.idModulo < modulo.id;

    return Positioned(
      left: (size.width * ponto.dx) - (circleSize / 2),
      top: (size.height * ponto.dy) - (circleSize / 2),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => ADetalheModulosScreen(modulo: modulo, index: 0),
            ),
          );
        },
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: circleSize,
                  height: circleSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          concluido
                              ? Colors.green
                              : atual
                              ? Colors.orange
                              : appColorPrimary,
                      width: 4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: atual ? 15 : 8,
                        color:
                            atual
                                ? Colors.orange.withOpacity(.5)
                                : Colors.black12,
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: ColorFiltered(
                      colorFilter:
                          bloqueado
                              ? const ColorFilter.mode(
                                Colors.grey,
                                BlendMode.saturation,
                              )
                              : const ColorFilter.mode(
                                Colors.transparent,
                                BlendMode.multiply,
                              ),
                      child: Image.asset(modulo.capa, fit: BoxFit.cover),
                    ),
                  ),
                ),

                if (concluido)
                  Positioned(
                    right: -4,
                    bottom: -4,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: circleSize * 0.35,
                      ),
                    ),
                  ),

                if (bloqueado)
                  Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: const BoxDecoration(
                      color: Colors.black45,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: circleSize * 0.35,
                    ),
                  ),
              ],
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: circleSize + 20,
              child: Text(
                modulo.title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JourneyPainter extends CustomPainter {
  final List<Offset> pontos;

  JourneyPainter(this.pontos);

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = appColorSecondary
          ..strokeWidth = 8
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;

    final path = Path();

    final p0 = Offset(pontos[0].dx * size.width, pontos[0].dy * size.height);

    path.moveTo(p0.dx, p0.dy);

    for (int i = 1; i < pontos.length; i++) {
      final atual = Offset(
        pontos[i].dx * size.width,
        pontos[i].dy * size.height,
      );

      final anterior = Offset(
        pontos[i - 1].dx * size.width,
        pontos[i - 1].dy * size.height,
      );

      final controlX = i.isOdd ? size.width * 0.95 : size.width * 0.05;

      path.quadraticBezierTo(
        controlX,
        (anterior.dy + atual.dy) / 2,
        atual.dx,
        atual.dy,
      );
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
