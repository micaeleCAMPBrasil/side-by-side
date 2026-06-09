import 'package:flutter/material.dart';
import 'package:side_by_side/data/licao_detalhada.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/AConstants.dart';

class licoesModulos {
  BuildContext context;

  late final Size size;
  late final String check;

  licoesModulos(this.context) {
    size = MediaQuery.of(context).size;
    check = tamanho(size.width);
  }

  // 0xffE9EDC9 verde
  // 0xffE9EDC9 amarelo

  // 0xffE9EDC9 (amarelo)
  // 0xffE9EDC9 (marrom)

  // merulho
  // 0xff6fa6aa (azul)
  // 0xffcccccc (cinza)

  List<LicaoFlipPage> get licao_mergulho_8 => [
    // Embarcando 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/33.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Embarcando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Que idioma você fala? Você sabe falar inglês? E francês? E alemão? Você sabe outros nomes de idiomas?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // Embarcando 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/33.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabe como todas as línguas surgiram? Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Carta Náutica',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Muitos anos depois do dilúvio havia muitos novos moradores na terra. A família de Noé havia se multiplicado.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/34.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Então o Senhor ordenou novamente: Mas vocês, sejam férteis e multipliquem-se; espalhem- se pela terra e proliferem nela. Gênesis 9:7 ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 3
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/bloco.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Mas não foi isso o que aconteceu. Vamos ver o que a Bíblia diz: ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'No mundo todo havia apenas uma língua, um só modo de falar. Saindo os homens do Oriente...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.43,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 4
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/bloco.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Encontraram uma planície em Sinear e ali se fixaram. Disseram uns aos outros: ´Vamos fazer tijolos e queimá-los bem’. Usavam tijolos em lugar de pedras, e piche em vez de argamassa.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 5
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/torre.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Depois disseram: ‘Vamos construir uma cidade, com uma torre que alcance os céus...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 6
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/torre.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Assim nosso nome será famoso e não seremos espalhados pela face da terra’. Gênesis 11:1-4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 7
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/35.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Apesar da ordem de Deus de que eles deveriam se espalhar pela terra, os homens decidiram se fixar em um só lugar, desobedecendo ao Senhor.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 8
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/35.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Escolheram fazer sua própria vontade. Eles queriam ficar famosos, estavam com seu coração cheio de vaidade e orgulho.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 9
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/35.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Vamos ver o que Deus fez: O Senhor desceu para ver a cidade e a torre que os homens estavam construindo.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 10
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'E disse o Senhor: Eles são um só povo e falam uma só língua, e começaram a construir isso. Em breve nada poderá impedir o que planejam fazer...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 11
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Venham, desçamos e confundamos a língua que falam, para que não entendam mais uns aos outros.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 12
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/36.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Assim o Senhor os dispersou dali por toda a terra, e pararam de construir a cidade. Por isso foi chamada Babel, porque ali...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 13
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 15,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/36.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'o Senhor confundiu a língua de todo o mundo. Dali o Senhor os espalhou por toda a terra. Gênesis 11:5-9',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 14
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/36.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'O que aconteceu quando Deus confundiu a língua que eles falavam? Por que Deus fez isso? No final, o propósito de Deus foi cumprido?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 15
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 17,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/yes_no.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'E na sua vida, algumas vezes você também quer fazer as coisas do seu jeito e não do jeito de Deus, obedecendo a Palavra de Deus? Você acha que vale a pena fazer as coisas contra a vontade de Deus? Por quê?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando oração
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 3,
      page: PageLicao(
        id: 18,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/37.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.15,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração:\nDeus nos ajude a fazer sempre as coisas de Seu jeito porque o Senhor nos ama e só quer o melhor para nós.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando versículo
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 8,
      nivel: 4,
      page: PageLicao(
        id: 19,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Babel',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.27,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Há caminho que parece certo ao homem, mas no final conduz à morte. Provérbios 14:12',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.37,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 5,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 1 - Mais resistente que o aço',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* O que é? \n* Como é produzida? \n* O que ela pode fazer? \n* O que você pode construir com ela?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_mergulho_7 => [
    // Embarcando 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mao_7.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Embarcando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Pegue um lápis e papel e desenhe um jardim, mas faça do seu jeito, pode inventar a vontade.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // Embarcando 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mao_7.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Você gosta de ter escolhas? Você sabia que na Bíblia tem a história de um homem que fez tudo do jeito de Deus! Vamos ver quem é!',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.27,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Carta Náutica',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Muitos anos se passarem desde que Adão e Eva foram expulsos do Éden. Você acha que o pecado cresceu ou diminuiu?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Ele foi aumentando cada vez mais. Deus ficou contente? Por que não? Deus não suportava ver tanta coisa errada nos seres que Ele havia criado. O que será que Ele fez? A Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 3
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/grafico.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.5,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'O Senhor viu que a perversidade do homem tinha aumentado na terra e que toda a inclinação dos pensa- mentos do seu coração era sempre e somente para o mal.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 4
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/grafico.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.5,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Então o Senhor arrependeu-se de ter feito o homem sobre a terra; e isso cortou-lhe o coração.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 5
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/grafico.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.5,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Disse o Senhor: Farei desaparecer da face da terra o homem que criei, os homens e também os animais grandes, os animais pequenos e as aves do céu. Arrependo-me de havê-los feito. Gênesis 6:5-7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 6
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'A maldade estava por toda parte. Mas e nos dias de hoje? Quando Deus observa os homens, as mulheres, as crianças, o que você acha que Ele sente?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 7
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Você acha que Ele está contente? O homem quer fazer do jeito de Deus? Cada um quer fazer somente a sua vontade, como era naquele tempo. Mas Deus viu que havia alguém diferente:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 8
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'A Noé, porém, o Senhor mostrou benevolência. Esta é a história da família de Noé: Noé era homem justo, íntegro entre o povo da sua época; ele andava com Deus. Gênesis 6:8-9',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 9
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'No meio de todas as pessoas que estavam longe de Deus, havia um homem diferente! Ele andava com Deus! Deus então o escolheu para uma grande missão. O que você acha que é andar com Deus?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 10
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Noé foi o responsável por construir a arca, um grande barco. Deus iria enviar um dilúvio, uma chuva enorme, para destruir toda a terra.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 11
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Noé obedeceu à ordem de Deus, construiu a arca e antes do dilúvio...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 12
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Deus colocou um casal de cada espécie de animal na arca, junto com a família de Noé, para que eles fossem salvos.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 13
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 15,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'O dilúvio veio! Depois de muitos dias dentro da arca, a família de Noé finalmente pode sair, porque já tinha terra seca.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 14
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Eles adoraram ao Senhor, fizeram um altar e ofereceram um sacrifício a Deus.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 15
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 17,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/32.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Deus colocou um arco no céu como lembrança da promessa de que Ele nunca mais iria destruir a terra com um dilúvio.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 16
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 18,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/yes_no.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Noé foi usado por Deus, por ser um homem obediente. Deus quer usar você, como Ele fez com Noé! Você está pronto a dizer, vou fazer do Seu jeito Deus? ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando oração
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 3,
      page: PageLicao(
        id: 19,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mao.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração:\nDeus ajuda-me a viver do Teu jeito. Eu quero andar contigo, como Noé andava. Quero estar pronto para fazer aqui na terra o que o Senhor mandar.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando versículo
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 7,
      nivel: 4,
      page: PageLicao(
        id: 20,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O Dilúvio',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.27,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Há caminho que parece certo ao homem, mas no final conduz à morte. Provérbios 14:12',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.37,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 5,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 1 - Mais resistente que o aço',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* O que é? \n* Como é produzida? \n* O que ela pode fazer? \n* O que você pode construir com ela?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_mergulho_6 => [
    // Embarcando 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cartao_vermelho.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Embarcando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabe para quê serve o cartão vermelho? Em um jogo, quando é que o juiz dá o cartão vermelho?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // Embarcando 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cartao_vermelho.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabe quando foi dado o primeiro cartão vermelho da história do mundo? Sabe quem recebeu?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Carta Náutica',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Então disse o Senhor Deus: Agora o homem se tornou como um de nós, conhecendo o bem e o mal. ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.38,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Não se deve, pois, permitir que ele também tome do fruto da árvore da vida e o coma, e viva para sempre. Por isso o Senhor Deus o mandou embora do jardim do Éden para cultivar o solo do qual fora tirado.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 3
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cuz_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.12,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Depois de expulsar o homem, colocou a leste do jardim do Éden querubins e uma espada flamejante que se movia, guar- dando o caminho para a árvore da vida. Gênesis 3:22-24',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 4
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Se eles ficassem no jardim e comessem do fruto da árvore da vida, o que aconteceria com eles? Você já imaginou viver para sempre separado de Deus por causa do pecado e com doenças?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 5
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/cruz_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Ao expulsar Adão e Eva do jardim do Éden, você acha que Deus foi justo? Você acha que Ele foi também misericordioso? Por quê?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 6
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/ovelha.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Ele queria que Adão e Eva fossem salvos do pecado, através da- quela promessa especial que Ele tinha feito, de um dia enviar um descendente...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 7
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/31.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Depois, eles poderiam viver eternamente. Você entende que o seu pecado separa você de Deus? Deus quer ser seu amigo especial, você está pronto a aceitar essa amizade de Deus? ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando oração
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 3,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mao_5.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração:\nSenhor, obrigada por ser justo e misericordioso. Eu quero que o Senhor seja meu melhor amigo.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando versículo
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 6,
      nivel: 4,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_6.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Expulsão do Jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.27,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Deus tornou pecado por nós aquele que não tinha pecado, para que nele nos tornássemos justiça de Deus.\n2 Coríntios 5:21',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.37,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 5,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 1 - Mais resistente que o aço',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* O que é? \n* Como é produzida? \n* O que ela pode fazer? \n* O que você pode construir com ela?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_mergulho_5 => [
    // Embarcando 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/interrogacao_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/jesus_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Embarcando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Como você acha que Deus se sente em relação ao pecado? Mas e como Deus agiu em relação a Adão e Eva? Será que Deus continuou a amá-los? ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/29.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/28.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Carta Náutica',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Por causa do seu pecado, a desobediência, Adão e Eva sofreram consequências sérias. Assim que pecaram, veja o que a Bíblia diz que eles perceberam:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/29.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/28.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Os olhos dos dois se abriram, e perceberam que estavam nus; então juntaram folhas de figueira para cobrir-se. Gênesis 3:7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 3
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Por que só agora perceberam que estavam nus? Porque antes de pecarem não tinham maldade em seus corações. O que você acha das roupas que eles fizeram? Aquelas roupas de folhas não resolviam seu problema.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 4
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Roupas de folhas iriam se rasgar logo, não iriam durar muito. Deus sabia do que eles precisavam, Ele amava Adão e Eva e não os abandonou. Veja o que Deus providenciou para eles: O Senhor Deus fez roupas de pele e com elas vestiu Adão e sua mulher.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 5
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/cruz_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'As roupas que Deus fez eram melhores? Por quê? Para fazer a roupa o que ele precisou fazer?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 6
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/ovelha.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Deus providenciou uma roupa que era resistente, mas, para isso, Ele precisou sacrificar, ou seja, matar um animal que não tinha nenhuma culpa. Aquele animal morreu para que as roupas de Adão e Eva fossem feitas.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 7
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/ovelha.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Um inocente precisou morrer para cobrir a nudez de Adão e Eva, por causa do pecado deles. Você sabe de alguém que era inocente e morreu para perdoar o pecado de pessoas culpados? Jesus. Ele tinha pecado?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 8
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/ovelha.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Não! Ele era o Filho perfeito de Deus que nunca fez nada errado e morreu para nos salvar do pecado. Você sabia que Jesus nunca pecou? Ele era diferente de você?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando oração
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 3,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/30.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração:\nDeus, obrigada porque o Senhor nos ama e mandou seu filho Jesus, sem pecado para morrer em nosso lugar.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.4,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando versículo
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 5,
      nivel: 4,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Provisão de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.27,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Deus tornou pecado por nós aquele que não tinha pecado, para que nele nos tornássemos justiça de Deus.\n2 Coríntios 5:21',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.37,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 5,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 1 - Mais resistente que o aço',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* O que é? \n* Como é produzida? \n* O que ela pode fazer? \n* O que você pode construir com ela?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_mergulho_4 => [
    // Embarcando 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/nuvem_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Embarcando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Brincando de solução. Dê a solução ou maneira de resolver para cada uma das palavras a seguir: SONO, FOME, CANSAÇO, ESCURO, SEDE, SUJEIRA, DOENÇA, PECADO.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // Embarcando 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/nuvem_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Essa última é mais difícil porque cada pessoa pensa diferente na solução para o pecado e alguns até pensam que não tem pecado. Mas o quê a Bíblia diz sobre isso:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_6.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Carta Náutica',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Adão e Eva sofreram consequências muito sérias quanto ao seu pecado. Mas Deus fez a eles uma promessa especial enquanto falava com a serpente:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_6.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Porei inimizade entre você e a mulher, entre a sua descendência e o descendente dela; este lhe ferirá a cabeça, e você lhe ferirá o calcanhar. Gênesis 3:15',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 3
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cruz_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Deus prometeu que enviaria um descendente da mulher para ferir a cabeça da serpente. Quem era a serpente? O que acontece quando você fere a cabeça de uma serpente? Deus estava prometendo destruir Satanás...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 4
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cruz_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Através de um descendente especial de uma mulher. Muitos anos depois dessa promessa, quando muitos já achavam que Deus havia se esquecido, Deus enviou seu Filho Perfeito, Jesus Cristo, para ser o Salvador do mundo.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 5
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/16.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Jesus escolheu morrer no lugar dos pecadores. Ele sofreu uma morte terrível, na cruz. Mas Jesus não ficou morto...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 6
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/icon_triste_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              left: size.width * 0.02,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Ele voltou a viver. E por causa do que Ele fez nós podemos ser salvos dos nossos pecados.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 7
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/jesus_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Você já aprendeu que foi criado por um Deus todo poderoso e que você é pecador porque desobedece a Deus. Mas através de Jesus...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 8
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/jesus_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Seus pecados podem ser perdoados. Você gostaria de pedir para Jesus ser o seu Salvador? Ele quer ser o Senhor da sua vida. Jesus morreu por você porque Ele te ama.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando oração
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 3,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mao_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração:\nSenhor, obrigada pela promessa maravilhosa de um Salvador.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.4,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando versículo
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 4,
      nivel: 4,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Portanto, da mesma forma como o pecado entrou no mundo por um homem, e pelo pecado a morte, assim também a morte veio a todos os homens, porque todos pecaram.\nRomanos 5:12',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.37,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 5,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 1 - Mais resistente que o aço',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* O que é? \n* Como é produzida? \n* O que ela pode fazer? \n* O que você pode construir com ela?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_mergulho_3 => [
    // Embarcando 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cobra_maca_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/coracao_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A Promessa de um Salvador',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Embarcando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Como você se sente quando faz algo que você sabe que está errado? O que você acha que Adão e Eva sentiram depois que desobedeceram a Deus?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // Embarcando 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cobra_maca_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/coracao_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Será que eles já tinham sentido isso antes? Será que eles morreram?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Carta Náutica',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver na Bíblia como tudo aconteceu:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Ouvindo o homem e sua mulher os passos do Senhor Deus que andava pelo jardim quando soprava a brisa do dia...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.48,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/arvore_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Esconderam-se da presença do Senhor Deus entre as árvores do jardim. Mas o Senhor Deus chamou o homem, perguntando: Onde está você?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 3
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          /*ImagensLicao(
            imagem: 'assets/image/icons/cobra_maca_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),*/
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 4
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/icon_nervoso.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'E ele respondeu: Ouvi teus passos no jardim e fiquei com medo, porque estava nu; por isso me escondi. Gênesis 3:8-10 ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.33,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 5
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),

          ImagensLicao(
            imagem: 'assets/image/icons/26.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              left: size.width * 0.17,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Por que eles se esconderam de Deus? De que eles tinham vergonha? Agora eles conheciam o mal, eles haviam experimentado o mal. ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 6
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/coracao_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.35,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'O pecado tem consequências:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 7
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mulher_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.38,
              left: size.width * 0.23,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'À mulher, Deus declarou: Multiplicarei grandemente o seu sofrimento na gravidez; com sofrimento você dará à luz filhos',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 8
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/icon_triste_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              left: size.width * 0.02,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'E ao homem declarou: maldita é a terra por sua causa; com sofrimento você se alimentará dela todos os dias da sua vida. Ela lhe dará espinhos e ervas daninhas...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 9
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/icon_triste_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              left: size.width * 0.02,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'E você terá que alimentar-se das plantas do campo. Com o suor do seu rosto você comerá o seu pão, até que volte à terra, visto que dela foi tirado; porque você é pó e ao pó voltará. Gênesis 3:16-19',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 10
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/27.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              left: size.width * 0.02,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'A terra toda sofreu as consequências. Lembra o que Deus havia dito que aconteceria com Adão e Eva se eles se comessem aquele fruto? E isso aconteceu mesmo?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 11
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/27.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              left: size.width * 0.02,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Que tipo de morte eles tiveram? A morte espiritual é a separação de Deus. Sentimentos de medo, vergonha e culpa começaram a surgir. Você pode pensar em algo que tem feito de errado?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 12
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/interrogacao_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Pense:\nO que acontecerá se você continuar fazendo? Vai continuar? ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando oração
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 3,
      page: PageLicao(
        id: 15,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/18.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Oração:\nDeus, ajuda-me a não pecar contra o Senhor.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.4,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando versículo
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 3,
      nivel: 4,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Consequências do Pecado',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Portanto, da mesma forma como o pecado entrou no mundo por um homem, e pelo pecado a morte, assim também a morte veio a todos os homens, porque todos pecaram.\nRomanos 5:12',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.37,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 5,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 1 - Mais resistente que o aço',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* O que é? \n* Como é produzida? \n* O que ela pode fazer? \n* O que você pode construir com ela?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_mergulho_2 => [
    // Embarcando 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/arvore_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/certo_errado.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Embarcando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabe o que é uma regra? Pode dar exemplos de regras? Deus deu uma única regra para Adão e Eva quando estavam no jardim: Coma livremente de qualquer árvore do jardim...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // Embarcando 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/arvore_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/certo_errado.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Mas não coma da árvore do conhecimento do bem e do mal, porque no dia em que dela comer, certamente você morrerá. (Gênesis 2:16,17) Mas existia alguém no jardim que não queria que Adão e Eva obedecessem a Deus.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cobra_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Carta Náutica',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver quem era?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Ora, a serpente era o mais astuto de todos os animais selvagens que o Senhor Deus tinha feito.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cobra_maca_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'E ela perguntou à mulher: Foi isto mesmo que Deus disse: Não comam de nenhum fruto das árvores do jardim? Respondeu a mulher à serpente: Podemos comer do fruto das árvores do jardim...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 3
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cobra_maca_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Mas Deus disse: Não comam do fruto da árvore que está no meio do jardim, nem toquem nele; do contrário vocês morrerão...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 4
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/false.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cobra_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              left: size.width * 0.02,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Disse a serpente à mulher: Certamente não morrerão! Deus sabe que, no dia em que dele comerem, seus olhos se abrirão, e vocês serão como Deus, conhecedores do bem e do mal. Gênesis 3:1-5',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 5
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),

          ImagensLicao(
            imagem: 'assets/image/icons/false.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cobra_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              left: size.width * 0.02,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Quem era essa serpente? Ele é a antiga serpente chamada diabo ou Satanás, que engana o mundo todo. Ele e os seus anjos foram lançados à terra. Apocalipse 12:9',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 6
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/16.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'O que a serpente disse que ia acontecer se Eva comesse o fruto? Foi o mesmo que Deus disse? Quem você acha que estava falando a verdade? Vamos ver o que Eva fez?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 7
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),

          ImagensLicao(
            imagem: 'assets/image/icons/16.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Quando a mulher viu que a árvore parecia agradável ao paladar, era atraente aos olhos e, além disso, desejável para dela se obter discernimento, tomou do seu fruto, comeu-o e o deu a seu marido, que comeu também. Gênesis 3:6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.05,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 8
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/interrogacao_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              left: size.width * 0.6,
              top: size.height * 0.05,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/24.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.12,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Eva preferiu acreditar em quem, em Deus ou em Satanás? Por que você acha que ela fez isso? O que ela queria? Isso se parece com o pecado de Lúcifer (Satanás)? Como?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando oração
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 3,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mao_5.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração:\nDeus, muitas vezes Satanás quer nos enganar, como fez com Eva, nos ajude a sempre te obedecermos e acreditarmos na tua Palavra.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando versículo
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 2,
      nivel: 4,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/nuvem_coracao.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'O pecado entra no mundo',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'O orgulho vem antes da destruição; o espírito altivo, antes da queda. Provérbios 16:18',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 5,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 1 - Mais resistente que o aço',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* O que é? \n* Como é produzida? \n* O que ela pode fazer? \n* O que você pode construir com ela?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_mergulho_1 => [
    // Embarcando 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/olho_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/nuvem_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Embarcando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Deus nos diz para amar a todos, certo? Mas tem alguém de quem Deus quer que sejamos inimigos.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // Embarcando 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/olho_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/nuvem_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Deus quer que fiquemos longe dele, e nunca façamos o que ele quer. Ele é o inimigo de Deus. Quem é esse? De onde ele veio?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 1
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/olho_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/lucifer.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height * 0.7,
              top: size.height * 0.52,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Carta Náutica',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia \ndiz sobre ele:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Você era o modelo de perfeição, cheio de sabedoria e de perfeita beleza.\nEzequiel 28:12',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.45,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 2
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/asas.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/olho_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Lúcifer morava com Deus no céu e era um querubim guardião. Qual você acha que era a tarefa de um querubim guardião?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 3
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/asas.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/olho_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Era um tipo de anjo que guardava a santidade de Deus. Parece uma tarefa importante? Mas Lúcifer não ficou satisfeito com essa tarefa tão especial que ele tinha.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 4
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_5.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.5,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Olha o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Seu coração tornou-se orgulhoso por causa da sua beleza, e você corrompeu a sua sabedoria por causa do seu esplendor. Ezequiel 28:17',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.06,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 5
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_5.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.5,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Você que dizia no seu coração: Subirei aos céus; erguerei o meu trono acima das estrelas de Deus; eu me assentarei no monte da assembléia, no ponto mais elevado do monte santo.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 6
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_5.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.5,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Subirei mais alto que as mais altas nuvens; serei como o Altíssimo.\nIsaías 14:13-14',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 7
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/icon_triste_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Lúcifer tornou-se orgulhoso e queria ser como Deus, não queria servir ao Senhor criador. Ele convenceu outros anjos a se rebelarem contra Deus.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 8
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/icon_triste_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'O Senhor Deus expulsou Lúcifer e esses anjos do céu. E disse o que aconteceria com ele:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 9
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/icon_triste_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto:
                'Mas às profundezas do Sheol você será levado, irá ao fundo do abismo! Isaías 14:15',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.05,
            ),
          ),
          TextosLicao(
            texto:
                'Lúcifer passou a ser conhecido como Satanás ou Diabo, o inimigo de Deus.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.48,
              left: size.width * 0.05,
            ),
          ),
        ],
      ),
    ),
    // carta náutica 1 - 10
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/anjos_caidos.jpg',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
        ],
      ),
    ),
    // mergulhando oração
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 3,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xff6fa6aa),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mao.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração:\nVamos agradecer porque Deus é mais poderoso do que Satanás e um dia vai derrotá-lo completamente.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando versículo
    LicaoFlipPage(
      idModulo: 2,
      idLicao: 1,
      nivel: 4,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffcccccc),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/nuvem_coracao.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'A queda de Lúcifer',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.08,
            ),
          ),
          TextosLicao(
            texto: 'Mergulhando',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'O orgulho vem antes da destruição; o espírito altivo, antes da queda. Provérbios 16:18',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mergulhando mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 5,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 1 - Mais resistente que o aço',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* O que é? \n* Como é produzida? \n* O que ela pode fazer? \n* O que você pode construir com ela?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_trilha_8 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/117.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Vamos fazer uma agenda? Cada um faz uma lista de coisas que quer fazer durante o dia e, ao lado, quantas horas quer passar fazendo aquilo.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/117.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'O que vocês acharem que deve ser feito deve ser colocado na lista',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 1,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/118.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.8,
                      left: size.width * 0.1,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Agora vamos dividir nas 24 horas do dia e observar se dá para fazer tudo. Está faltando algo?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 1,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/118.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.8,
                      left: size.width * 0.1,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Não deu? Precisamos de tempo para dormir? Comer? Fazer tarefas?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 1,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/119.png',
            configuracaoImagem: ConfiguracaoImagem(
              top: size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/120.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, left: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                '(Fale levando em consideração o que cada um gostaria de fazer, inclusive você).',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 1,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/119.png',
            configuracaoImagem: ConfiguracaoImagem(
              top: size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/120.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, left: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Será que conseguimos organizar melhor? Como Deus se organizou?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/32.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.2,
                      top: size.height * 0.01,
                      right: 0,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      top: size.height * 0.1,
                      right: 0,
                    ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/121.png',
            configuracaoImagem:
                check == 'computador' || check == 'tablet'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.6,
                      top: size.height * 0.55,
                      left: 0,
                    )
                    : ConfiguracaoImagem(width: size.width, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Mapa da Trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold40
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E havendo Deus acabado no dia sétimo a obra que fizera, descansou no sétimo dia de toda a sua obra, que tinha feito...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffE9EDC9),
        imagemPage:
            check == 'tablet' || check == 'computador'
                ? 'assets/image/icons/trilha/122-1.png'
                : 'assets/image/icons/trilha/122.png',
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorWhiteBold40
                      : colorWhiteBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorWhiteSemiBold45
                      : check == 'computador'
                      ? colorWhiteSemiBold60
                      : colorWhiteSemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/123.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(width: size.width, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E abençoou Deus o dia sétimo, e o santificou; porque nele descansou de toda a sua obra que Deus criara e fizera.\nGênesis 2:2-3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/124-1.png'
                    : 'assets/image/icons/trilha/124.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Porque em seis dias fez o Senhor os céus e a terra, o mar e tudo que neles há, e ao sétimo dia descansou...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 5
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/124-1.png'
                    : 'assets/image/icons/trilha/124.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Portanto abençoou o Senhor o dia do sábado, e o santificou.\nÊxodo 20:11',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 6
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/125.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.2,
                      top: size.height * 0.01,
                      right: 0,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.4,
                      top: size.height * 0.04,
                      right: 0,
                    ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/126.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0, left: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.6,
                      left: 0,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Quantos dias Deus trabalhou? E no final da semana? Precisamos tempo de descanso?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 7
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/125.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.2,
                      top: size.height * 0.01,
                      right: 0,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.4,
                      top: size.height * 0.04,
                      right: 0,
                    ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/126.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0, left: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.6,
                      left: 0,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Em que outro tempo devemos descansar? Noites, férias...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 8
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/127.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Devemos descansar de brincar? Para que serve o descanso? A Palavra diz que há tempo para tudo. Vamos ler:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/128.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top: size.height * 0.05,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/129-1.png'
                    : 'assets/image/icons/trilha/129.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Tudo tem o seu tempo determinado, e há tempo para todo o propósito debaixo do céu. Há tempo de nascer...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 10
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/128.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top: size.height * 0.05,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/129-1.png'
                    : 'assets/image/icons/trilha/129.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'e tempo de morrer; tempo de plantar, e tempo de arrancar o que se plantou...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 11
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 15,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/128.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top: size.height * 0.05,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/130-1.png'
                    : 'assets/image/icons/trilha/130.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Tempo de matar, e tempo de curar, tempo de derrubar, e tempo de edificar; Tempo de chorar, e tempo de rir...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.22
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 12
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/128.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top: size.height * 0.05,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/130-1.png'
                    : 'assets/image/icons/trilha/130.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Tempo de prantear, e tempo de dançar; Tempo de espalhar pedras, e tempo de ajuntar pedras...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.22
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 13
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 17,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/131-1.png'
                    : 'assets/image/icons/trilha/131.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Tempo de abraçar, e tempo de afastar-se de abraçar, tempo de buscar, e tempo de perder, tempo de guardar...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 14
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 18,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/131-1.png'
                    : 'assets/image/icons/trilha/131.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E tempo de lançar fora; Tempo de rasgar, e tempo de coser; tempo de estar calado, e tempo de falar...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 15
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 19,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/132-1.png'
                    : 'assets/image/icons/trilha/132.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Tempo de amar, e tempo de odiar; tempo de guerra, e tempo de paz.\nEclesiastes 3:2-8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 16
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 20,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/133.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.2,
                      top: size.height * 0.01,
                      right: 0,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.4,
                      top: size.height * 0.1,
                      right: 0,
                    ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/134.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(left: 0, bottom: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.6,
                      left: 0,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Cada coisa tem seu tempo. Existem coisas mais importantes que outras?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 17
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 21,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/133.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.2,
                      top: size.height * 0.01,
                      right: 0,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.4,
                      top: size.height * 0.1,
                      right: 0,
                    ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/134.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(left: 0, bottom: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.6,
                      left: 0,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Que tal colocarmos na agenda o que é mais importante primeiro.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 18
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 22,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/135.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(width: size.width, left: 0, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Depois vamos colocando as outras e fazendo a seleção. Não esqueça o tempo com Deus! (Arrumem as agendas) Vamos falar com Deus!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas oração
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 3,
      page: PageLicao(
        id: 23,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/24.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Oração',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.2
                      : size.height * 0.18,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Deus obrigado porque o Senhor sabe o que precisamos e o Senhor nos ajuda a perceber o que realmente precisamos. Ajude-nos também a esperar pelo tempo do Senhor, sabendo que vais suprir cada uma de nossas necessidades',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold40
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign:
                  check == 'tablet' || check == 'computador'
                      ? TextAlign.center
                      : TextAlign.left,
              top: size.height * 0.3,
              left:
                  check == 'tablet' || check == 'computador'
                      ? size.width * 0.1
                      : 0,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas versículo
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 4,
      page: PageLicao(
        id: 24,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),

          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/136.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 8',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.18,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Tudo tem o seu tempo determinado, e há tempo para todo o propósito debaixo do céu. Eclesiastes 3:1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 5,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 4 - O Relógio de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* Quem tem esse relógio? \n* O tempo é igual ao nosso? \n* Como ele funciona? \n* Como sabemos a hora certa das coisas? \n* Podemos adiantar as horas nesse relógio?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_trilha_7 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/103.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                '(Recapitule tudo o que Deus fez).\nDeus fez tudo e todo dia Ele dizia que o que tinha feito era bom.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/103.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Mas depois que Deus criou o homem, Deus disse que algo não estava bom, o que será?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/104.png',
            configuracaoImagem: ConfiguracaoImagem(
              left: size.width * 0.2,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Mapa da Trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold40
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'E disse o Senhor Deus: Não é bom que o homem esteja só...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.45
                      : size.height * 0.4,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/104.png',
            configuracaoImagem: ConfiguracaoImagem(
              left: size.width * 0.2,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Far-lhe-ei uma ajudadora idônea (que combine, que seja boa para ele) para ele...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/105-1.png'
                    : 'assets/image/icons/trilha/105.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Havendo, pois, o Senhor Deus formado da terra todo o animal do campo, e toda a ave dos céus, os trouxe a Adão...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/105-1.png'
                    : 'assets/image/icons/trilha/105.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Para este ver como lhes chamaria; e tudo o que Adão chamou a toda a alma vivente, isso foi o seu nome...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 5
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/106.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, right: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E Adão pôs os nomes a todo o gado, e às aves dos céus, e a todo o animal do campo; mas para o homem não se achava ajudadora idônea...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 6
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/106.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, right: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Então o Senhor Deus fez cair um sono pesado sobre Adão e este adormeceu...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 7
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/107.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, left: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E tomou uma das suas costelas, e cerrou a carne em seu lugar. E disse Adão: Esta é agora osso dos meus ossos...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 8
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/107.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, left: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E carne da minha carne; esta será chamada mulher, porquanto do homem foi tomada...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/108.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Portanto deixará o homem o seu pai e a sua mãe, e apegar-se-á à sua mulher, e serão ambos uma carne.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 10
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/108.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E ambos estavam nus, o homem e a sua mulher; e não se envergonhavam.\nGênesis 2:18-25',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 11
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/109.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(width: size.width, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E Deus os abençoou, e Deus lhes disse: Frutificai e multiplicai-vos, e enchei a terra, e sujeitai-a...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 12
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/109.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(width: size.width, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E dominai sobre os peixes do mar e sobre as aves dos céus, e sobre todo o animal que se move sobre a terra e sujeitai-a...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 13
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 15,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/109.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(width: size.width, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E disse Deus: Eis que vos tenho dado toda a erva que dê semente, que está sobre a face de toda a terra....',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 14
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/110.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, right: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E disse Deus: Eis que vos tenho dado toda a erva que dê semente, que está sobre a face de toda a terra...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 15
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 17,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/110.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, right: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E toda a árvore, em que há fruto que dê semente, ser-vos-á para mantimento....',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 16
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 18,
        backgroundPage: Color(0xffE9EDC9),
        imagemPage:
            check == 'tablet' || check == 'computador'
                ? 'assets/image/icons/trilha/111-1.png'
                : 'assets/image/icons/trilha/111.png',
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 17
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 19,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/113.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.25,
              bottom: 0,
              left: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E a todo o animal da terra, e a toda a ave dos céus, e a todo o réptil da terra, em que há alma vivente, toda a erva verde será para mantimento; e assim foi...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 18
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 20,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/113.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.25,
              bottom: 0,
              right: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E viu Deus tudo quanto tinha feito, e eis que era muito bom; e foi a tarde e a manhã, o dia sexto.\nGênesis 1:28-31',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 19
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 21,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/114.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, left: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Deus percebeu que não seria bom para o homem ficar só. Ele fez a mulher imediatamente?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 20
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 22,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/114.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, right: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'O que ele esperou? Que Adão sentisse a necessidade. Deus conhece nossas verdadeiras necessidades?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 21
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 23,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/115.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, right: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Ele pode supri-las? Quando? O que realmente estamos precisando? Vamos orar sobre isso?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas oração
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 3,
      page: PageLicao(
        id: 24,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),

          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/24.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Oração',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.18,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Deus obrigado porque o Senhor sabe o que precisamos e o Senhor nos ajuda a perceber o que realmente precisamos. Ajude-nos também a esperar pelo tempo do Senhor, sabendo que vais suprir cada uma de nossas necessidades',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold40
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign:
                  check == 'tablet' || check == 'computador'
                      ? TextAlign.center
                      : TextAlign.left,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.33
                      : size.height * 0.28,
              left:
                  check == 'tablet' || check == 'computador'
                      ? size.width * 0.1
                      : 0,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas versículo
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 4,
      page: PageLicao(
        id: 25,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/116.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.18,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Tudo tem o seu tempo determinado, e há tempo para todo o propósito debaixo do céu. Eclesiastes 3:1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 5,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 4 - O Relógio de Deus',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* Quem tem esse relógio? \n* O tempo é igual ao nosso? \n* Como ele funciona? \n* Como sabemos a hora certa das coisas? \n* Podemos adiantar as horas nesse relógio?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_trilha_6 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/90.png',
            configuracaoImagem: ConfiguracaoImagem(left: 0, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : check == 'celular_medio'
                      ? size.height * 0.25
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Você já viu os robôs que estão inventando? Eles andam, obedecem a comandos, dançam, jogam coisas, eles são uma obra-prima!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' || check == 'tablet'
                      ? size.height * 0.38
                      : check == 'celular_medio'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/91.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabe o que é uma obra prima? É a melhor obra de alguém. Você sabe qual foi a obra-prima de Deus?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' || check == 'tablet'
                      ? size.height * 0.38
                      : check == 'celular_medio'
                      ? size.height * 0.3
                      : size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/92-1.png'
                    : 'assets/image/icons/trilha/92.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Mapa da Trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.17
                      : check == 'tablet'
                      ? size.height * 0.15
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold40
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' || check == 'tablet'
                      ? size.height * 0.22
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E disse Deus: Façamos o homem à nossa imagem, conforme a nossa semelhança; e domine sobre os peixes do mar...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' || check == 'tablet'
                      ? size.height * 0.28
                      : size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/92-1.png'
                    : 'assets/image/icons/trilha/92.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'e sobre as aves dos céus e sobre o gado, e sobre toda a terra, e sobre todo o réptil que se move sobre a terra.\nGênesis 1:26',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' || check == 'tablet'
                      ? size.height * 0.22
                      : check == 'celular_medio'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/94.png',
            configuracaoImagem: ConfiguracaoImagem(left: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/95.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, right: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E formou o Senhor Deus o homem do pó da terra, e soprou em suas narinas o fôlego da vida; e o homem foi feito alma vivente.\nGênesis 2:7',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' ||
                          check == 'tablet' ||
                          check == 'celular_medio'
                      ? size.height * 0.3
                      : size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/89.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E criou Deus o homem à sua imagem; à imagem de Deus o criou;\nGênesis 1:26',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 5
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/96-1.png'
                    : 'assets/image/icons/trilha/96.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E plantou o Senhor Deus um jardim no Éden, do lado oriental; e pôs ali o homem que tinha formado...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'celular_medio'
                      ? size.height * 0.3
                      : size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 6
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/96-1.png'
                    : 'assets/image/icons/trilha/96.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E o Senhor Deus fez brotar da terra toda a árvore agradável à vista, e boa para comida...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'celular_medio'
                      ? size.height * 0.3
                      : size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 7
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xffE9EDC9),
        imagemPage:
            check == 'tablet' || check == 'computador'
                ? 'assets/image/icons/trilha/97-1.png'
                : 'assets/image/icons/trilha/97.png',
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 8
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/98-1.png'
                    : 'assets/image/icons/trilha/98.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'e a árvore da vida no meio do jardim, e a árvore do conhecimento do bem e do mal. E saía um rio do Éden para regar o jardim...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.22
                      : size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/99-1.png'
                    : 'assets/image/icons/trilha/99.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E tomou o Senhor Deus o homem, e o pôs no jardim do Éden para o lavrar e o guardar.\nGênesis 2:8-15',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 10
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/100.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'A obra-prima de Deus é o homem. Ele o fez com suas próprias mãos e soprou nele Sua vida. O homem é igual aos animais?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' ||
                          check == 'tablet' ||
                          check == 'celular_medio'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 11
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/101.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, left: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'No que eles são diferentes? Deus fez o homem de maneira especial. Deus fez você também? Vamos agradecer?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' || check == 'tablet'
                      ? size.height * 0.32
                      : size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas oração
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 3,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/24.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Oração',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Senhor obrigado por ter nos feito de maneira tão especial, nos ajude a sermos, de novo, parecidos com o Senhor.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' || check == 'tablet'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas versículo
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 4,
      page: PageLicao(
        id: 15,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.11
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/102.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.22,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Criou Deus o homem à sua imagem, à imagem de Deus o criou; homem e mulher os criou. Gênesis 1:27',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.38,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 5,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 3 - A Polícia Verde',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* Quem é a polícia verde? \n* Qual o seu lema? \n* Para quem ela trabalha? \n* O que ela faz? \n* Como posso ser uma polícia verde?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_trilha_5 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/75-1.png'
                    : 'assets/image/icons/trilha/75.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Brinque de quem lembra mais nomes de animais e aves de A - Z. Tente preencher todas as letras.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/75-1.png'
                    : 'assets/image/icons/trilha/75.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabe quantas espécies de animais existem? Mais de 1 milhão de espécies de animais, aves e insetos. Mas, como surgiram?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/76-1.png'
                    : 'assets/image/icons/trilha/76.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/77-1.png'
                    : 'assets/image/icons/trilha/77.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Mapa da Trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold40
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.27,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E disse Deus: Produzam as águas abundantemente répteis de alma vivente; e voem as aves sobre a face da expansão dos céus...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/78.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(right: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      top: size.height * 0.1,
                      right: 0,
                    ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/79.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(width: size.width * 0.7, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E Deus criou as grandes baleias, e todo o réptil de alma vivente que as águas abundantemente produziram conforme as suas espécies...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/78.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(right: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      top: size.height * 0.1,
                      right: 0,
                    ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/79.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(width: size.width * 0.7, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E toda a ave de asas conforme a sua espécie; e viu Deus que era bom...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/76-1.png'
                    : 'assets/image/icons/trilha/76.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/80-1.png'
                    : 'assets/image/icons/trilha/80.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E Deus os abençoou, dizendo: Frutificai e multiplicai-vos, e enchei as águas nos mares...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 5
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/76-1.png'
                    : 'assets/image/icons/trilha/76.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/80-1.png'
                    : 'assets/image/icons/trilha/80.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E as aves se multipliquem na terra. E foi a tarde e a manhã, o dia quinto...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 6
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 8,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/81-1.png'
                    : 'assets/image/icons/trilha/81.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E disse Deus: Produza a terra alma vivente conforme a sua espécie; gado, e répteis e feras da terra conforme a sua espécie; e assim foi...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 7
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xffE9EDC9),
        imagemPage:
            check == 'tablet' || check == 'computador'
                ? 'assets/image/icons/trilha/82-1.png'
                : 'assets/image/icons/trilha/82.png',
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top: size.height * 0.05,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.1,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 8
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/83-1.png'
                    : 'assets/image/icons/trilha/83.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E fez Deus as feras da terra conforme a sua espécie, e o gado conforme a sua espécie, e todo o réptil da terra conforme a sua espécie; e viu Deus que era bom.\nGênesis 1:20-25',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.22
                      : size.height * 0.18,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/84.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/85.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(right: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      top: size.height * 0.1,
                      right: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'O que Deus fez no quinto dia? E no sexto? Deus fez todos os animais, do jeito que eles são...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 10
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/84.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/85.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(right: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      top: size.height * 0.1,
                      right: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Deus fez peixes que tem sua própria lanterna, cangurus que tem sua própria bolsa...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 11
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/86-1.png'
                    : 'assets/image/icons/trilha/86.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Peixes que voam, aves que mergulham, répteis que mudam de cor, animais enormes e minúsculos. A natureza estava quase completa! Um paraíso!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 12
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/87.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      left: size.width * 0.25,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Deus fez também a natureza de maneira que uma espécie depende da outra para viver. Se matarmos uma espécie, estamos bagunçando o que Deus fez tão perfeito!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.18,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 13
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 15,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/18.png',
            configuracaoImagem:
                check == 'computador' || check == 'tablet'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(width: size.width, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'O que você acha disto? Vamos agradecer por Deus ter feito tudo tão perfeito.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas oração
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 3,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/24.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Oração',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Senhor, te agradecemos pelos animais e pelas aves que deixam a natureza tão bonita e nos alimentam, nos ajude a cuidarmos bem de todas as tuas criaturas!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign:
                  check == 'tablet' || check == 'computador'
                      ? TextAlign.center
                      : TextAlign.left,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.28,
              left:
                  check == 'tablet' || check == 'computador'
                      ? size.width * 0.1
                      : 0,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas versículo
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 4,
      page: PageLicao(
        id: 17,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/89.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 5',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Quinto e Sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.18,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Criou Deus o homem à sua imagem, à imagem de Deus o criou; homem e mulher os criou. Gênesis 1:27',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 5,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 3 - A Polícia Verde',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* Quem é a polícia verde? \n* Qual o seu lema? \n* Para quem ela trabalha? \n* O que ela faz? \n* Como posso ser uma polícia verde?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_trilha_4 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/novos/62-1.png'
                    : 'assets/image/icons/novos/62.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Vocês sabem de que são feitos o sol e as estrelas? Eles são feitos de gases. Vou mostrar para vocês um tipo de gás.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/novos/62-1.png'
                    : 'assets/image/icons/novos/62.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'computador' ? size.height * 0.3 : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                '(Pegue meio copo de vinagre e coloque uma colher de chá de bicarbonato de sódio e deixe que as crianças observem.)',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 1,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffE9EDC9),
        imagemPage:
            check == 'tablet' || check == 'computador'
                ? 'assets/image/icons/novos/63-1.png'
                : 'assets/image/icons/novos/63.png',
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorWhiteBold40
                      : colorWhiteBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorWhiteSemiBold45
                      : check == 'computador'
                      ? colorWhiteSemiBold60
                      : colorWhiteSemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 1,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/64.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(top: size.height * 0.15, right: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      top: size.height * 0.15,
                      right: 0,
                    ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/65.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(top: size.height * 0.15, left: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      top: size.height * 0.15,
                      left: 0,
                    ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/novos/estrelas-1.png'
                    : 'assets/image/icons/novos/estrelas.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Esse gás não queima, mas alguns tipos de gases queimam. O sol e as estrelas são bolas feitas...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : check == 'tablet'
                      ? size.height * 0.45
                      : size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 5
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 1,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/64.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(top: size.height * 0.15, right: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      top: size.height * 0.15,
                      right: 0,
                    ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/65.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(top: size.height * 0.15, left: 0)
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      top: size.height * 0.15,
                      left: 0,
                    ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/novos/estrelas-1.png'
                    : 'assets/image/icons/estrelas.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'de vários gases que estão queimando. Você sabe quem fez o sol, a lua e as estrelas?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: check == 'tablet' ? size.height * 0.45 : size.height * 0.38,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'computador' || check == 'tablet'
                    ? 'assets/image/icons/novos/33-1.png'
                    : 'assets/image/icons/novos/33.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Mapa da Trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold40
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' || check == 'tablet'
                      ? size.height * 0.3
                      : size.height * 0.27,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Minhas próprias mãos estenderam os céus; eu dispus o seu exército de estrelas. Isaías 45:12',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.38,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/67.png',
            configuracaoImagem: ConfiguracaoImagem(
              top: size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/68.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, left: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Disse Deus: "Haja luminares no firmamento do céu para separar o dia da noite...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/67.png',
            configuracaoImagem: ConfiguracaoImagem(
              top: size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/68.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, right: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Sirvam eles de sinais para marcar estações, dias e anos...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xffE9EDC9),
        imagemPage:
            check == 'tablet' || check == 'computador'
                ? 'assets/image/icons/novos/69-1.png'
                : 'assets/image/icons/novos/69.png',
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 5
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/67.png',
            configuracaoImagem: ConfiguracaoImagem(
              top: size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/70.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, right: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'e sirvam de luminares no firmamento do céu para iluminar a terra". E assim foi.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.33,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 6
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/67.png',
            configuracaoImagem: ConfiguracaoImagem(
              top: size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/70.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, left: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'O nosso calendário é solar, tudo é marcado pela posição do sol!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 7
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'computador' || check == 'tablet'
                    ? 'assets/image/icons/novos/71-1.png'
                    : 'assets/image/icons/novos/71.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Deus fez os dois grandes luminares: o maior para governar o dia e o menor para governar a noite; fez também as estrelas...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 8
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'computador' || check == 'tablet'
                    ? 'assets/image/icons/novos/71-1.png'
                    : 'assets/image/icons/novos/71.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Deus os colocou no firmamento do céu para iluminar a terra, governar o dia e a noite...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 1 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/72.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width,
                      top: size.height * 0.4,
                    )
                    : ConfiguracaoImagem(width: size.width, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'e separar a luz das trevas. E Deus viu que ficou bom. Passaram-se a tarde e a manhã; esse foi o Quarto dia. Gênesis 1:14-19',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' || check == 'tablet'
                      ? size.height * 0.33
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas oração
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 3,
      page: PageLicao(
        id: 15,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/24.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Oração',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Deus, obrigado porque o Senhor nos deu o sol para nos aquecer e a lua tão bonita para iluminar nossas noites.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.32,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas versículo
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 4,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/novos/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/novos/61.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 4',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Como é feliz aquele cujo auxílio é o Deus de Jacó, cuja esperança está no Senhor, no seu Deus, que fez os céus e a terra, o mar e tudo o que neles há, e que mantém a sua fidelidade para sempre! Salmos 146:5,6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic25,
              textAlign:
                  check == 'tablet' || check == 'computador'
                      ? TextAlign.center
                      : TextAlign.left,
              left:
                  check == 'tablet' || check == 'computador'
                      ? size.width * 0.13
                      : 0,
              top:
                  check == 'tablet'
                      ? size.height * 0.32
                      : check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.38,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 5,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 2 - A capa invisível',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* Que capa é essa? \n* O que ela protege? \n* De quê ela protege? \n* Qual é a nossa capa? \n* Como ficar protegido?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_trilha_3 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/46.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0, right: 0)
                    : ConfiguracaoImagem(bottom: 0, left: size.height * 0.1),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'computador' || check == 'celular_medio'
                      ? size.height * 0.3
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabe como a chuva fica na nuvem sem cair? É a atmosfera. A pressão do ar evita que ela caia. (Encha uma vasilha com água. Pique uma folha de papel.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : check == 'tablet' || check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/47.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      left: size.height * 0.35,
                      top: size.height * 0.62,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.8,
                      left: size.height * 0.05,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              alignment: Alignment.topLeft,
              top:
                  check == 'computador' || check == 'celular_medio'
                      ? size.height * 0.3
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Pegue um copo. Empurre todo o papel no fundo do copo. Coloque o copo de cabeça para baixo na tigela bem rápido até que a água o cubra.)',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : check == 'tablet' || check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 1,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/48.png',
            configuracaoImagem: ConfiguracaoImagem(
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.02
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/48 - Copia.png',
            configuracaoImagem: ConfiguracaoImagem(right: 0, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'O que acontece com o papel? Continua no fundo do copo, mas não cai na água. Isso é a pressão da atmosfera. Ela segura o papel assim como ela segura a água no céu.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : check == 'tablet' || check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // aquecimento 1 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 1,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/48.png',
            configuracaoImagem: ConfiguracaoImagem(
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.02
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/49.png',
            configuracaoImagem: ConfiguracaoImagem(left: 0, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'A água não consegue chegar ao papel porque o ar está comprimido entre ela e o papel. Mas quem fez a atmosfera?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : check == 'tablet' || check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/50.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.5,
                      top: size.height * 0.45,
                      left: 0,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      bottom: 0,
                      left: 0,
                    ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/15.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.7,
                      top: size.height * 0.5,
                      right: 0,
                    )
                    : ConfiguracaoImagem(
                      bottom: 0,
                      right: 0,
                      width: size.width * 0.7,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Mapa da Trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.18,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : check == 'tablet'
                      ? size.height * 0.3
                      : size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Haja entre as águas um firmamento que separe águas de águas. Então Deus fez o firmamento e separou as águas que...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.5
                      : check == 'tablet' || check == 'celular_medio'
                      ? size.height * 0.38
                      : size.height * 0.33,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem:
                check == 'computador' || check == 'tablet'
                    ? 'assets/image/icons/trilha/11-2.png'
                    : 'assets/image/icons/trilha/52.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'estavam embaixo do firmamento das que estavam por cima. E assim foi. Ao firmamento Deus chamou céu. Passaram-se a tarde e a manhã; esse foi o segundo dia...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : check == 'tablet' || check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/53-1.png'
                    : 'assets/image/icons/trilha/53.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E disse Deus: "Ajuntem-se num só lugar as águas que estão debaixo do céu, e apareça a parte seca" E assim foi.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/53-1.png'
                    : 'assets/image/icons/trilha/53.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'À parte seca Deus chamou terra, e chamou mares ao conjunto das águas. E Deus viu que ficou bom. Gênesis 1:6-10',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 5
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/54-1.png'
                    : 'assets/image/icons/trilha/54.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Um vapor, porém, subia da terra, e regava toda a face da terra.\nGênesis 2:6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 6
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/55-1.png'
                    : 'assets/image/icons/trilha/55.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Então disse Deus: "Cubra-se a terra de vegetação: plantas que dêem sementes e árvores cujos frutos produzam sementes de acordo com as suas espécies"',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : check == 'tablet'
                      ? size.height * 0.25
                      : check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 7
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xffE9EDC9),
        imagemPage:
            check == 'tablet' || check == 'computador'
                ? 'assets/image/icons/trilha/56-1.png'
                : 'assets/image/icons/trilha/56.png',
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/44-branco.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorWhiteBold40
                      : colorWhiteBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorWhiteSemiBold45
                      : check == 'computador'
                      ? colorWhiteSemiBold60
                      : colorWhiteSemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 8
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/57-1.png'
                    : 'assets/image/icons/trilha/57.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E assim foi. A terra fez brotar a vegetação: plantas que dão sementes de acordo com as suas espécies, e árvores cujos frutos produzem sementes..."',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_medio'
                      ? size.height * 0.3
                      : size.height * 0.22,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/58-1.png'
                    : 'assets/image/icons/trilha/58.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'de acordo com as suas espécies. E Deus viu que ficou bom. Passaram-se a tarde e a manhã; esse foi o terceiro dia. Gênesis 1:6-13"',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 10
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/59.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.6,
                      top: size.height * 0.55,
                      right: 0,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.6,
                      bottom: 0,
                      right: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Deus fez nossa atmosfera, que é formada de um pouco de oxigênio, que respiramos, bastante nitrogênio',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),

    // mapa da trilha 2 - 11
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 15,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/59.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.6,
                      top: size.height * 0.55,
                      right: 0,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.6,
                      bottom: 0,
                      right: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Que é necessário à vida, e um pouco de dióxido de carbono que as plantas respiram.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 12
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/60-1.png'
                    : 'assets/image/icons/trilha/60.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Depois de preparar o ambiente, Deus separou a terra das aguas e então fez as plantas.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 13
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 17,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/60-1.png'
                    : 'assets/image/icons/trilha/60.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Podem dizer o nome de algumas plantas? Deus é o maior gênio que existe! O que você acha?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador' || check == 'celular_medio'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas oração
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 3,
      page: PageLicao(
        id: 18,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/24.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Oração',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Deus muito obrigado porque o Senhor fez tudo tão perfeito, não existe outro Deus como o Senhor! O Senhor é poderoso.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas versículo
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 4,
      page: PageLicao(
        id: 19,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/45.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.5,
              top: check == 'tablet' ? size.height * 0.1 : size.height * 0.14,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/61.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 3',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'O Segundo e o Terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Como é feliz aquele cujo auxílio é o Deus de Jacó, cuja esperança está no Senhor, no seu Deus, que fez os céus e a terra, o mar e tudo o que neles há, e que mantém a sua fidelidade para sempre! Salmos 146:5,6',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic25,
              textAlign:
                  check == 'tablet' || check == 'computador'
                      ? TextAlign.center
                      : TextAlign.left,
              left:
                  check == 'tablet' || check == 'computador'
                      ? size.width * 0.13
                      : 0,
              top:
                  check == 'tablet'
                      ? size.height * 0.3
                      : check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.38,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 5,
      page: PageLicao(
        id: 18,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Mistério 2 - A capa invisível',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* Que capa é essa? \n* O que ela protege? \n* De quê ela protege? \n* Qual é a nossa capa? \n* Como ficar protegido?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_trilha_2 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/27.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'tablet'
                      ? size.height * 0.35
                      : check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.75,
              left: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'computador' ? size.height * 0.3 : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Se você fosse o criador de todas as coisas o quê você criaria primeiro? (Deixe que as crianças troquem ideias, dê as suas também.)',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : check == 'tablet'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // Aquecimento 1 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/28.png',
            configuracaoImagem:
                check == 'celular_pequeno'
                    ? ConfiguracaoImagem(height: size.height * 0.2, bottom: 0)
                    : ConfiguracaoImagem(bottom: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/29.png',
            configuracaoImagem:
                check == 'celular_pequeno'
                    ? ConfiguracaoImagem(
                      height: size.height * 0.2,
                      bottom: 0,
                      right: 0,
                    )
                    : ConfiguracaoImagem(bottom: 0, right: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Imagine que você vai criar um planeta, o que é mais importante? Vocês querem saber o que é mais importante? Querem saber o que Deus fez primeiro?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet'
                      ? size.height * 0.3
                      : check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/31.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: check == 'tablet' ? size.width * 0.3 : size.width * 0.5,
              top:
                  check == 'tablet'
                      ? size.height * 0.2
                      : check == 'computador'
                      ? 0
                      : size.height * 0.13,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/15.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.7,
                      left: size.width * 0.13,
                      top: size.height * 0.52,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.7,
                      bottom: 0,
                      left: size.width * 0.13,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Mapa da Trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left:
                  check == 'celular_pequeno'
                      ? size.width * 0.1
                      : size.width * 0.2,
              top:
                  check == 'tablet'
                      ? size.height * 0.25
                      : check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.22,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.31,
              left:
                  check == 'tablet' || check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'No princípio Deus criou os céus e a terra.\nGênesis 1:1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.45,
              left:
                  check == 'tablet' || check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 2
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/33-1.png'
                    : 'assets/image/icons/trilha/33.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(width: size.width, bottom: 0)
                    : ConfiguracaoImagem(
                      width: size.width,
                      //top: size.height * 0.11,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Os céus! Vamos olhar lá fora. O que estão vendo? O céu é grande? Será que vemos tudo? Não. E eu acho que quando Deus criou o céu não se podia enxergar nada.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet'
                      ? size.height * 0.3
                      : check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.23,
              left: size.width * 0.07,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/34.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.9,
                      left: size.width * 0.08,
                      top:
                          check == 'computador'
                              ? size.height * 0.38
                              : size.height * 0.4,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.8,
                      left: size.width * 0.12,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Ele fez o nosso planeta, mas ainda não se podia enxergar. Sabe como eu sei disso?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet'
                      ? size.height * 0.35
                      : check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 4
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/34.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.9,
                      left: size.width * 0.08,
                      top:
                          check == 'computador'
                              ? size.height * 0.38
                              : size.height * 0.4,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.8,
                      left: size.width * 0.12,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Fechem os olhos como se estivéssemos lá e escutem. (Leia bem pausadamente)',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet'
                      ? size.height * 0.35
                      : check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 5
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/35.png',
            configuracaoImagem: ConfiguracaoImagem(top: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/36.png',
            configuracaoImagem: ConfiguracaoImagem(
              //width: size.width * 0.7,
              bottom: 0,
              //top: size.height * 0.15,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Era a terra sem forma e vazia; trevas cobriam a face do abismo, e o Espírito de Deus se movia sobre a face das águas.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet'
                      ? size.height * 0.3
                      : check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 6
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/35.png',
            configuracaoImagem: ConfiguracaoImagem(top: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/37.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width,
                      top: size.height * 0.35,
                    )
                    : ConfiguracaoImagem(width: size.width, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Disse Deus: Haja luz, e houve luz... Deus viu que a luz era boa, e separou a luz das trevas. Deus chamou à luz dia...',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet'
                      ? size.height * 0.3
                      : check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 7
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/35.png',
            configuracaoImagem: ConfiguracaoImagem(top: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/37.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width,
                      top: size.height * 0.35,
                    )
                    : ConfiguracaoImagem(width: size.width, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E às trevas chamou noite. Passaram-se a tarde e a manhã; esse foi o primeiro dia.\nGênesis 1:2-5 ',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet'
                      ? size.height * 0.3
                      : check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 8
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffE9EDC9),
        imagemPage:
            check == 'tablet' || check == 'computador'
                ? 'assets/image/icons/trilha/38-1.png'
                : 'assets/image/icons/trilha/38.png',
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/39-1.png'
                    : 'assets/image/icons/trilha/39.png',
            configuracaoImagem: ConfiguracaoImagem(top: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/40.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.5,
                      right: 0,
                      top: size.height * 0.3,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      right: 0,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Tudo era escuro, como alguém poderia enxergar? Você consegue enxergar no escuro?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 10
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/39-1.png'
                    : 'assets/image/icons/trilha/39.png',
            configuracaoImagem: ConfiguracaoImagem(top: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/40.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.5,
                      right: 0,
                      top: size.height * 0.3,
                    )
                    : ConfiguracaoImagem(
                      width: size.width * 0.5,
                      right: 0,
                      bottom: 0,
                    ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E Deus pode enxergar no escuro? Se Ele criou no escuro, então Ele pode!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 11
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/42.png',
            configuracaoImagem: ConfiguracaoImagem(top: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/41.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E então... Deus fez a luz! Como Ele fez a luz? Só falou? Será que dá para acender a luz falando?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 12
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/42.png',
            configuracaoImagem: ConfiguracaoImagem(top: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/41.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Algumas casas já tem controle remoto de voz, mas naquela época isso não existia.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 13
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 15,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/42.png',
            configuracaoImagem: ConfiguracaoImagem(top: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/43.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.8,
                      top: size.height * 0.3,
                    )
                    : ConfiguracaoImagem(width: size.width * 0.8, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Era só o controle de Deus. Ele é o máximo! Depois de haver criado a terra Ele fez a luz.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // mapa da trilha 2 - 14
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/42.png',
            configuracaoImagem: ConfiguracaoImagem(top: 0),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/43.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(
                      width: size.width * 0.8,
                      top: size.height * 0.3,
                    )
                    : ConfiguracaoImagem(width: size.width * 0.8, bottom: 0),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Porque a luz é tão importante assim? (Deixe que falem.) Então vamos agradecer pela luz!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas oração
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 3,
      page: PageLicao(
        id: 17,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/24.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Oração',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Deus nós te agradecemos por ter feito os céus, a terra e a luz para que todas as outras coisas pudessem existir e para podermos enxergar tudo que está ao nosso redor.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold40
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas versículo
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 4,
      page: PageLicao(
        id: 18,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/25.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.13
                      : check == 'tablet'
                      ? size.height * 0.04
                      : check == 'computador'
                      ? 0
                      : size.height * 0.1,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/44.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.2,
              top: size.height * 0.15,
              left: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/15.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.3,
              top: size.height * 0.75,
              width: size.width,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.01
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.05
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Antes de nascerem os montes e de criares a terra e o mundo, de eternidade a eternidade tu és Deus. Salmos 90:2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.33
                      : size.height * 0.38,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    /*LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 5,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/linha_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Mistério 1 - A voz misteriosa',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Na nossa trilha existe uma voz misteriosa, uma voz que sempre foi ouvida e ainda hoje é ouvida.',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold18,
              textAlign: TextAlign.left,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                '* De quem é a voz? \n* O que ela diz? \n* Onde ela é ouvida? \n* Quem a obedece? \n* Como ela é ouvida hoje?',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryMedium20,
              textAlign: TextAlign.justify,
              top: size.height * 0.5,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),*/
  ];

  List<LicaoFlipPage> get licao_trilha_1 => [
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              height: size.height * 0.3,
              bottom: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              height: size.height * 0.3,
              right: 0,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'computador' ? size.height * 0.3 : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabia que quando eu tinha a sua idade os celulares eram diferentes?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'computador'
                      ? size.height * 0.38
                      : check == 'tablet' || check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          // menino
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/6.png',
            configuracaoImagem: ConfiguracaoImagem(bottom: 0, right: 0),
          ),
          //celular preto
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/5.png',
            configuracaoImagem: ConfiguracaoImagem(
              top:
                  check == 'tablet'
                      ? size.height * 0.1
                      : check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.3,
              width:
                  check == 'computador' ? size.width * 0.2 : size.width * 0.6,
              left:
                  check == 'tablet'
                      ? size.width * 0.1
                      : check == 'computador'
                      ? size.width * 0.2
                      : 0,
            ),
          ),
          // celular branco
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/4.png',
            configuracaoImagem: ConfiguracaoImagem(
              top:
                  check == 'celular_pequeno' || check == 'computador'
                      ? size.height * 0.2
                      : check == 'celular_medio'
                      ? size.height * 0.35
                      : 0,
              width:
                  check == 'computador' ? size.width * 0.2 : size.width * 0.5,
              right:
                  check == 'tablet'
                      ? size.width * 0.1
                      : check == 'computador'
                      ? size.width * 0.3
                      : 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/7.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' ? size.height * 0.4 : size.height * 0.27,
              //left: size.width * 0.1,
              bottom: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/8.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' ? size.height * 0.4 : size.height * 0.22,
              bottom: 0,
              right: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'A cada dia objetos novos são inventados, e você sabe quem os inventa? O que é um inventor? É uma pessoa que inventa coisas que nunca foram vistas antes.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.15
                      : check == 'celular_medio'
                      ? size.height * 0.25
                      : size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/9.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.27,
              left: size.width * 0.1,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Pode me dizer o nome de algumas invenções? Como será que uma invenção é feita? Como esse celular foi feito? O que acham?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.18
                      : check == 'celular_medio' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/10.png',
            configuracaoImagem: ConfiguracaoImagem(
              bottom: 0,
              height:
                  check == 'celular_pequeno'
                      ? size.height * 0.3
                      : size.height * 0.3,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Eu acho que precisa de um plano, um desenho, experiências, colocar as peças juntas. Você acha que precisa de alguém inteligente?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.15
                      : check == 'celular_medio' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem:
                check == 'tablet' || check == 'computador'
                    ? 'assets/image/icons/trilha/11-2.png'
                    : 'assets/image/icons/trilha/11.png',
            configuracaoImagem:
                check == 'tablet' || check == 'computador'
                    ? ConfiguracaoImagem(bottom: 0)
                    : ConfiguracaoImagem(bottom: 0, width: size.width),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E o que você acha do céu? Alguém fez? E a terra? Será que foi alguém? Como podemos saber?',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              //top: check == 'tablet' ? size.height * 0.25 : size.height * 0.2,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.3
                      : check == 'celular_medio' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 2, // mapa da trilha
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/12.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.35,
              bottom: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/13.png',
            configuracaoImagem: ConfiguracaoImagem(
              //width: size.width * 0.6,
              bottom: 0,
              right: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Mapa da Trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'computador' ? size.height * 0.3 : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold40
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              /*top:
                  check == 'celular_pequeno'
                      ? size.height * 0.25
                      : size.height * 0.35, */
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.27
                      : check == 'celular_medio' || check == 'tablet'
                      ? size.height * 0.3
                      : size.height * 0.38,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'No princípio Deus criou os céus e a terra.\nGênesis 1:1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              /*top:
                  check == 'celular_pequeno'
                      ? size.height * 0.25
                      : size.height * 0.4,*/
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.4
                      : size.height * 0.45,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 2, // mapa da trilha
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffE9EDC9),
        imagemPage:
            check == 'tablet' || check == 'computador'
                ? 'assets/image/icons/trilha/14-1.png'
                : 'assets/image/icons/trilha/14.png',
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorWhiteBold40
                      : colorWhiteBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorWhiteSemiBold45
                      : check == 'computador'
                      ? colorWhiteSemiBold60
                      : colorWhiteSemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 2, // mapa da trilha
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/15.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.2
                      : size.height * 0.15,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.18,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/16_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              bottom: 0,
              width: size.width,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'A Bíblia começa dizendo que existe Deus. Mas quando ele foi criado? A Bíblia também nos diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.3
                      : check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 2, // mapa da trilha
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/15.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.2
                      : size.height * 0.15,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.18,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/16_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              bottom: 0,
              width: size.width,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Antes de nascerem os montes e de criares a terra e o mundo, de eternidade a eternidade tu és Deus.\nSalmos 90:2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.28
                      : check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 2, // mapa da trilha
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/21.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.7,
              left: size.width * 0.4,
              //bottom: 0,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.3
                      : size.height * 0.7,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),

          TextosLicao(
            texto:
                'O que quer dizer de eternidade a eternidade? O que significa eterno? Algo que não tem princípio nem fim. Então, Deus sempre existiu!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet'
                      ? size.height * 0.25
                      : check == 'computador' || check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 2, // mapa da trilha
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/18.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height
                      : size.height * 0.3,
              width: size.width,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.35
                      : size.height * 0.72,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Muitas pessoas acham que Deus não existe, o que você acha? Como você acha que Deus é? Sem principio nem fim, como essa aliança.',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet'
                      ? size.height * 0.3
                      : check == 'computador' || check == 'celular_medio'
                      ? size.height * 0.35
                      : size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 2, // mapa da trilha
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/73.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.5,
              top:
                  check == 'tablet'
                      ? size.width * 0.2
                      : check == 'computador'
                      ? size.width * 0.1
                      : size.height * 0.25,
              left:
                  check == 'tablet' || check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/66.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: check == 'tablet' ? size.height : size.height * 0.3,
              top: check == 'tablet' ? size.height * 0.33 : size.height * 0.72,
              right: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 2, // mapa da trilha
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/21.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.2,
              top: size.height * 0.13,
              left: size.width * 0.37,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/22.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height * 0.3,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Ele é o princípio e o fim de todas as coisas! (Diga às crianças quem é Deus para você).',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimaryBold45
                      : check == 'computador'
                      ? colorPrimaryBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.3
                      : size.height * 0.35,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 3, // fazendo as malas
      page: PageLicao(
        id: 15,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              right: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/24.png',
            configuracaoImagem: ConfiguracaoImagem(
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
              left: 0,
              bottom: 0,
              //top: size.height * 0.13,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Oração',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Vamos agradecer porque Deus existe e ele é mais poderoso do que qualquer coisa ou qualquer pessoa',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.32,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 4, // versiculo
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width:
                  check == 'tablet'
                      ? size.width * 0.3
                      : check == 'computador'
                      ? size.width * 0.2
                      : size.width * 0.6,
              left: 0,
              top:
                  check == 'celular_pequeno' || check == 'celular_medio'
                      ? size.height * 0.07
                      : size.height * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              bottom: 0,
              right: 0,
              height:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.4
                      : size.height * 0.2,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/trilha/26.png',
            configuracaoImagem: ConfiguracaoImagem(
              left: 0,
              bottom: 0,
              height: size.height * 0.2,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Fazendo as malas: Versículo para Memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold45
                      : colorPrimaryBold25,
              textAlign: TextAlign.left,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.25
                      : size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Antes de nascerem os montes e de criares a terra e o mundo, de eternidade a eternidade tu és Deus.\nSalmos 90:2',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBoldItalic45
                      : check == 'computador'
                      ? colorPrimarySemiBoldItalic60
                      : colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top:
                  check == 'tablet' || check == 'computador'
                      ? size.height * 0.38
                      : size.height * 0.32,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 5, // last page
      page: PageLicao(
        id: 17,
        backgroundPage: Color(0xffE9EDC9),
        imagens: [],
        textos: [
          TextosLicao(
            texto: 'Aventura 1',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet' || check == 'computador'
                      ? colorPrimaryBold40
                      : colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.1,
              top:
                  check == 'celular_pequeno' || check == 'tablet'
                      ? size.height * 0.02
                      : check == 'computador'
                      ? size.height * 0.05
                      : size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style:
                  check == 'tablet'
                      ? colorPrimarySemiBold45
                      : check == 'computador'
                      ? colorPrimarySemiBold60
                      : colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top:
                  check == 'celular_pequeno'
                      ? size.height * 0.06
                      : check == 'computador'
                      ? size.height * 0.1
                      : size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),

        ],
      ),
    ),
  ];
}
