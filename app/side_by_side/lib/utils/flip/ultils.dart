import 'package:flutter/material.dart';
import 'package:side_by_side/data/licao_detalhada.dart';

Widget imagensPage(List<ImagensLicao> background) {
  return Stack(
    children: background.map((item) {
      return Positioned(
        width: item.configuracaoImagem?.width,
        height: item.configuracaoImagem?.height,
        top: item.configuracaoImagem?.top,
        bottom: item.configuracaoImagem?.bottom,
        left: item.configuracaoImagem?.left,
        right: item.configuracaoImagem?.right,
        child: Image.asset(
          item.imagem!,
        ),
      );
    }).toList(),
  );
}

Widget textosPage(Size size, List<TextosLicao> textos) {
  return Container(
    width: size.width * 0.9,
    height: size.height * 0.9,
    padding: const EdgeInsets.all(12.0),
    child: Stack(
      children: textos.map((item) {
        return Container(
          alignment: item.configuracaoTexto.alignment,
          margin: EdgeInsets.only(
            top: item.configuracaoTexto.top,
            bottom: item.configuracaoTexto.bottom,
            left: item.configuracaoTexto.left,
            right: item.configuracaoTexto.right,
          ),
          child: Text(
            item.texto,
            style: item.configuracaoTexto.style,
            textAlign: item.configuracaoTexto.textAlign,
          ),
        );
      }).toList(),
    ),
  );
}
