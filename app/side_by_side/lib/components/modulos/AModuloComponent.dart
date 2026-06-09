// ignore_for_file: file_names
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/screens/modulos/ADetalheModulosScreen.dart';
import 'package:side_by_side/utils/AConstants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AModuloComponent extends StatefulWidget {
  int index;
  ScrollPhysics? physics;
  List<Modulos> modulos;
  AModuloComponent({
    super.key,
    required this.modulos,
    this.index = 0,
    this.physics,
  });

  @override
  State<AModuloComponent> createState() => _AModuloComponentState();
}

class _AModuloComponentState extends State<AModuloComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.modulos.isEmpty) {
      return Center(
        child: Text(
          'Ainda não há módulos nesta categoria.',
          style: colorPrimaryRegulard18,
        ),
      );
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (1 / 1.5),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      physics: widget.physics ?? const NeverScrollableScrollPhysics(),
      itemCount: widget.modulos.length,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 16),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                /*Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AModulosScreen(
                            modulo: modulos[index],
                          ),
                        ),
                      );*/
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ADetalheModulosScreen(
                          modulo: widget.modulos[index],
                          index: 0,
                        ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.modulos[index].capa.toString(),
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.6,
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(0.37),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.modulos[index].title.toString(),
                    style: colorWhiteBold20,
                  ),
                  Text(
                    widget.modulos[index].subtitle.toString(),
                    style: colorWhiteBold14,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
