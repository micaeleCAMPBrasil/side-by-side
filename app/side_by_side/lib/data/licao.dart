import 'package:flutter/material.dart';
import 'package:side_by_side/data/licao_detalhada.dart';
import 'package:side_by_side/utils/AConstants.dart';

class licoesModulos {
  BuildContext context;

  late final Size size;

  licoesModulos(this.context) {
    size = MediaQuery.of(context).size;
  }

  // 0xff739e59 verde
  // 0xffe1d434 amarelo

  // 0xffdfad3d (amarelo)
  // 0xff976126 (marrom)

  List<LicaoFlipPage> get licao_trilha_8 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/calendario_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height * 0.8,
              bottom: 0,
              left: size.width * 0.05,
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
            texto: 'O sétimo dia',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.09,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.15,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Vamos fazer uma agenda? Cada um faz uma lista de coisas que quer fazer durante o dia e, ao lado, quantas horas quer passar fazendo aquilo. O que vocês acharem que deve ser feito deve ser colocado na lista',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.20,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/08/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // aquecimento 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 1,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/ponto_de_interrogacao_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/19.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Agora vamos dividir nas 24 horas do dia e observar se dá para fazer tudo. Está faltando algo? Não deu? Precisamos de tempo para dormir? Comer? Fazer tarefas?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.24,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/ponto_de_interrogacao_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/19.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                '(Fale levando em consideração o que cada um gostaria de fazer, inclusive você). Será que conseguimos organizar melhor? Como Deus se organizou?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/n_7.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Mapa da trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.19,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E havendo Deus acabado no dia sétimo a obra que fizera, descansou no sétimo dia de toda a sua obra, que tinha feito. E abençoou Deus o dia sétimo, e o santificou; porque nele descansou de toda a sua obra que Deus criara e fizera.\nGênesis 2:2-3',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.30,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/n_7.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Porque em seis dias fez o Senhor os céus e a terra, o mar e tudo que neles há, e ao sétimo dia descansou; portanto abençoou o Senhor o dia do sábado, e o santificou.\nÊxodo 20:11',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.26,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/ponto_de_interrogacao_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/relogio_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Quantos dias Deus trabalhou? E no final da semana? Precisamos tempo de descanso? Em que outro tempo devemos descansar? Noites, férias... ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
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
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/ponto_de_interrogacao_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/relogio_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Devemos descansar de brincar? Para que serve o descanso? A Palavra diz que há tempo para tudo. Vamos ler:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/ampulheta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/livros.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Tudo tem o seu tempo determinado, e há tempo para todo o propósito debaixo do céu. Há tempo de nascer, e tempo de morrer; tempo de plantar, e tempo de arrancar o que se plantou, tempo de matar, e tempo de curar...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.22,
              left: size.width * 0.05,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/ampulheta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/livros.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Tempo de derrubar, e tempo de edificar; Tempo de chorar, e tempo de rir; tempo de prantear, e tempo de dançar; Tempo de espalhar pedras, e tempo de ajuntar pedras,tempo de abraçar, e tempo de afastar-se de abraçar...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.22,
              left: size.width * 0.05,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/ampulheta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/livros.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Tempo de buscar, e tempo de perder, tempo de guardar, e tempo de lançar fora; Tempo de rasgar, e tempo de coser; tempo de estar calado, e tempo de falar; Tempo de amar, e tempo de odiar; tempo de guerra, e tempo de paz.\nEclesiastes 3:2-8',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.05,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/relogio_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 1 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/20.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/21.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Cada coisa tem seu tempo. Existem coisas mais importantes que outras? Que tal colocarmos na agenda o que é mais importante primeiro. Depois vamos colocando as outras e fazendo a seleção. Não esqueça o tempo com Deus! (Arrumem as agendas) Vamos falar com Deus!',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.23,
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
        id: 14,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/22.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Fazendo as malas:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração - Deus obrigado porque o Senhor sabe o que precisamos e o Senhor nos ajuda a perceber o que realmente precisamos. Ajude-nos também a esperar pelo tempo do Senhor, sabendo que vais suprir cada uma de nossas necessidades',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
              left: size.width * 0.1,
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
        id: 15,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/23.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.left,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Tudo tem o seu tempo determinado, e há tempo para todo o propósito debaixo do céu. Eclesiastes 3:1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.justify,
              top: size.height * 0.25,
              left: size.width * 0.02,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 8,
      nivel: 5,
      page: PageLicao(
        id: 16,
        backgroundPage: Color(0xff976126),
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
    ),
  ];

  List<LicaoFlipPage> get licao_trilha_7 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/14.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
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
            texto: 'Criação da mulher',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.09,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.23,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                '(Recapitule tudo o que Deus fez).\nDeus fez tudo e todo dia Ele dizia que o que tinha feito era bom, mas depois que Deus criou o homem, Deus disse que algo não estava bom, o que será?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
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
        id: 2,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/15.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Mapa da trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.19,
              top: size.height * 0.16,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E disse o Senhor Deus: Não é bom que o homem esteja só; far-lhe-ei uma ajudadora idônea (que combine, que seja boa para ele) para ele...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.30,
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
        id: 3,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/15.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Havendo, pois, o Senhor Deus formado da terra todo o animal do campo, e toda a ave dos céus, os trouxe a Adão, para este ver como lhes chamaria; e tudo o que Adão chamou a toda a alma vivente, isso foi o seu nome...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.15,
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
        id: 4,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/15.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E Adão pôs os nomes a todo o gado, e às aves dos céus, e a todo o animal do campo; mas para o homem não se achava ajudadora idônea. Então o Senhor Deus fez cair um sono pesado sobre Adão e este adormeceu...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.17,
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
        id: 5,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/15.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E tomou uma das suas costelas, e cerrou a carne em seu lugar. E disse Adão: Esta é agora osso dos meus ossos, e carne da minha carne; esta será chamada mulher, porquanto do homem foi tomada...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.17,
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
        id: 6,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/15.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.04,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Portanto deixará o homem o seu pai e a sua mãe, e apegar-se-á à sua mulher, e serão ambos uma carne. E ambos estavam nus, o homem e a sua mulher; e não se envergonhavam.\nGênesis 2:18-25',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.17,
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
        id: 7,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planeta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E Deus os abençoou, e Deus lhes disse: Frutificai e multiplicai-vos, e enchei a terra, e sujeitai-a; e dominai sobre os peixes do mar e sobre as aves dos céus, e sobre todo o animal que se move sobre a terra...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.17,
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
        id: 8,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planeta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E disse Deus: Eis que vos tenho dado toda a erva que dê semente, que está sobre a face de toda a terra; e toda a árvore, em que há fruto que dê semente, ser-vos-á para mantimento....',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.17,
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
        id: 9,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planeta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E a todo o animal da terra, e a toda a ave dos céus, e a todo o réptil da terra, em que há alma vivente, toda a erva verde será para mantimento; e assim foi...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.22,
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
        id: 10,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planeta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E viu Deus tudo quanto tinha feito, e eis que era muito bom; e foi a tarde e a manhã, o dia sexto.\nGênesis 1:28-31',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
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
        id: 11,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/17.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Deus percebeu que não seria bom para o homem ficar só. Ele fez a mulher imediatamente? O que ele esperou? Que Adão sentisse a necessidade.',
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
    // mapa da trilha 1 - 10
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/17.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Deus conhece nossas verdadeiras necessidades? Ele pode supri-las? Quando? O que realmente estamos precisando? Vamos orar sobre isso?',
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
    // fazendo as malas oração
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 3,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/18.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Fazendo as malas:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração - Deus obrigado porque o Senhor sabe o que precisamos e o Senhor nos ajuda a perceber o que realmente precisamos. Ajude-nos também a esperar pelo tempo do Senhor, sabendo que vais suprir cada uma de nossas necessidades',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
              left: size.width * 0.1,
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
        id: 13,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/calendario_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.left,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Tudo tem o seu tempo determinado, e há tempo para todo o propósito debaixo do céu. Eclesiastes 3:1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.justify,
              top: size.height * 0.25,
              left: size.width * 0.02,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 7,
      nivel: 5,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffe1d434),
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
    ),
  ];

  List<LicaoFlipPage> get licao_trilha_6 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/9.png',
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
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.09,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Você já viu os robôs que estão inventando? Eles andam, obedecem a comandos, dançam, jogam coisas, eles são uma obra-prima!',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/9.png',
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
            texto: 'Criação do homem e seu jardim',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.09,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabe o que é uma obra prima? É a melhor obra de alguém. Você sabe qual foi a obra-prima de Deus?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/10.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Mapa da trilha:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.19,
              top: size.height * 0.16,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.23,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E disse Deus: Façamos o homem à nossa imagem, conforme a nossa semelhança; e domine sobre os peixes do mar, e sobre as aves dos céus, e sobre o gado, e sobre toda a terra, e sobre todo o réptil que se move sobre a terra. Gênesis 1:26',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/06/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.08,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/11.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.035,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E formou o Senhor Deus o homem do pó da terra, e soprou em suas narinas o fôlego da vida; e o homem foi feito alma vivente. Gênesis 2:7',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.33,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/11.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.035,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E criou Deus o homem à sua imagem; à imagem de Deus o criou; Gênesis 1:26',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.43,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/arvore_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.015,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E plantou o Senhor Deus um jardim no Éden, do lado oriental; e pôs ali o homem que tinha formado. E o Senhor Deus fez brotar da terra toda a árvore agradável à vista, e boa para comida...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/arvore_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.015,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'e a árvore da vida no meio do jardim, e a árvore do conhecimento do bem e do mal. E saía um rio do Éden para regar o jardim; ... E tomou o Senhor Deus o homem, e o pôs no jardim do Éden para o lavrar e o guardar. Gênesis 2:8-15',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/arvore_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 1 - 8
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/12.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.015,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'A obra-prima de Deus é o homem. Ele o fez com suas próprias mãos e soprou nele Sua vida. O homem é igual aos animais?',
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
    // mapa da trilha 1 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/12.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.015,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'No que eles são diferentes? Deus fez o homem de maneira especial. Deus fez você também? Vamos agradecer?',
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
    // fazendo as malas oração
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 3,
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/13.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Fazendo as malas:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração - Senhor obrigado por ter nos feito de maneira tão especial, nos ajude a sermos, de novo, parecidos com o Senhor.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
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
        id: 13,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/8.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              left: size.width * 0.6,
              top: size.height * 0.04,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.left,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Criou Deus o homem à sua imagem, à imagem de Deus o criou; homem e mulher os criou. Gênesis 1:27',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.justify,
              top: size.height * 0.25,
              left: size.width * 0.02,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 6,
      nivel: 5,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xffdfad3d),
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
    ),
  ];

  List<LicaoFlipPage> get licao_trilha_5 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/abc.png',
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
            texto: 'Quinto e sexto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.09,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.18,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Brinque de quem lembra mais nomes de animais e aves de A ? Z. Tente preencher todas as letras. Você sabe quantas espécies de animais existem? Mais de 1 milhão de espécies de animais, aves e insetos. Mas, como surgiram?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.22,
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
        id: 2,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/animais.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Mapa da trilha: ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.19,
              top: size.height * 0.2,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.30,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'E disse Deus: Produzam as águas abundantemente répteis de alma vivente; e voem as aves sobre a face da expansão dos céus...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.justify,
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
        id: 3,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/05/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/passaros_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/baleia.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E Deus criou as grandes baleias, e todo o réptil de alma vivente que as águas abundantemente produziram conforme as suas espécies; e toda a ave de asas conforme a sua espécie; e viu Deus que era bom...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
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
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/passaros_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/baleia.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E Deus os abençoou, dizendo: Frutificai e multiplicai-vos, e enchei as águas nos mares; e as aves se multipliquem na terra. E foi a tarde e a manhã, o dia quinto...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
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
        id: 6,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/passaros_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/animais_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E disse Deus: Produza a terra alma vivente conforme a sua espécie; gado, e répteis e feras da terra conforme a sua espécie; e assim foi...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
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
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/passaros_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/animais_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E fez Deus as feras da terra conforme a sua espécie, e o gado conforme a sua espécie, e todo o réptil da terra conforme a sua espécie; e viu Deus que era bom. Gênesis 1:20-25',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.32,
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
        id: 8,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/05/2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 1 - 8
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 9,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/05/3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.08,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 1 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 2,
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/peixe.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/n_5.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/n_6.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'O que Deus fez no quinto dia? E no sexto? Deus fez todos os animais, do jeito que eles são. Deus fez peixes que tem sua própria lanterna, cangurus que tem sua própria bolsa, peixes que voam, aves que mergulham, répteis que mudam de cor, animais enormes e minúsculos.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
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
        id: 11,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/7.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'A natureza estava quase completa! Um paraíso! Deus fez também a natureza de maneira que uma espécie depende da outra para viver. Se matarmos uma espécie, estamos bagunçando o que Deus fez tão perfeito! O que você acha disto? Vamos agradecer por Deus ter feito tudo tão perfeito.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
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
        id: 12,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/mao.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Fazendo as malas:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração - Senhor, te agradecemos pelos animais e pelas aves que deixam a natureza tão bonita e nos alimentam, nos ajude a cuidarmos bem de todas as tuas criaturas!',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
              left: size.width * 0.1,
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
        id: 13,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/8.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.left,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Criou Deus o homem à sua imagem, à imagem de Deus o criou; homem e mulher os criou. Gênesis 1:27',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.justify,
              top: size.height * 0.25,
              left: size.width * 0.02,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 5,
      nivel: 5,
      page: PageLicao(
        id: 14,
        backgroundPage: Color(0xff739e59),
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
    ),
  ];

  List<LicaoFlipPage> get licao_trilha_4 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/mancha_5.png',
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
            texto: 'O quarto dia',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.09,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.18,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Vocês sabem de que são feitos o sol e as estrelas? Eles são feitos de gases. Vou mostrar para vocês um tipo de gás. (Pegue meio copo de vinagre e coloque uma colher de chá de bicarbonato de sódio e deixe que as crianças observem.) E...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.22,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/04/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.9,
              height: size.height,
              left: size.width * 0.05,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // aquecimento 1 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 1,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/lua.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/sol.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/estrelas.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Esse gás não queima, mas alguns tipos de gases queimam. O sol e as estrelas são bolas feitas de vários gases que estão queimando. Você sabe quem fez o sol, a lua e as estrelas?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.22,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/reciclagem.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.1,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 5,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/6.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/lua_sol.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Mapa da trilha: ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.19,
              top: size.height * 0.2,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.30,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Minhas próprias mãos estenderam os céus; eu dispus o seu exército de estrelas. Isaías 45:12',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.justify,
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
      idLicao: 4,
      nivel: 2,
      page: PageLicao(
        id: 6,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/6.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/lua_sol.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Disse Deus: "Haja luminares no firmamento do céu para separar o dia da noite. Sirvam eles de sinais para marcar estações, dias e anos, e sirvam de luminares no firmamento do céu para iluminar a terra". E assim foi. O nosso calendário é solar, tudo é marcado pela posição do sol!',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.justify,
              top: size.height * 0.21,
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
        id: 7,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/lua_sol_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mao_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Deus fez os dois grandes luminares: o maior para governar o dia e o menor para governar a noite; fez também as estrelas. Deus os colocou no firmamento do céu para iluminar a terra, governar o dia e a noite, e separar a luz das trevas.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.justify,
              top: size.height * 0.27,
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
        id: 8,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/lua_sol_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mao_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.03,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E Deus viu que ficou bom. Passaram-se a tarde e a manhã; esse foi o quarto dia. Gênesis 1:14-19',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
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
        id: 9,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/mao_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Fazendo as malas:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração - Deus, obrigado porque o Senhor nos deu o sol para nos aquecer e a lua tão bonita para iluminar nossas noites.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
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
        id: 10,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/coracao.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.left,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Como é feliz aquele cujo auxílio é o Deus de Jacó, cuja esperança está no Senhor, no seu Deus, que fez os céus e a terra, o mar e tudo o que neles há, e que mantém a sua fidelidade para sempre! Salmos 146:5,6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.justify,
              top: size.height * 0.25,
              left: size.width * 0.02,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 4,
      nivel: 5,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff976126),
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
    ),
  ];

  List<LicaoFlipPage> get licao_trilha_3 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/linha_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/nuvem.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
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
              top: size.height * 0.02,
            ),
          ),
          TextosLicao(
            texto: 'O  segundo e o terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabe como a chuva fica na nuvem sem cair? É a atmosfera. A pressão do ar evita que ela caia. (Encha uma vasilha com água. Pique uma folha de papel.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
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
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/linha_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/nuvem.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
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
              top: size.height * 0.02,
            ),
          ),
          TextosLicao(
            texto: 'O  segundo e o terceiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Pegue um copo. Empurre todo o papel no fundo do copo. Coloque o copo de cabeça para baixo na tigela bem rápido até que a água o cubra.)',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
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
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/nuvem_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'O que acontece com o papel? Continua no fundo do copo, mas não cai na água. Isso é a pressão da atmosfera. Ela segura o papel assim como ela segura a água no céu.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
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
      idLicao: 3,
      nivel: 1,
      page: PageLicao(
        id: 4,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/nuvem_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'A água não consegue chegar ao papel porque o ar está comprimido entre ela e o papel. Mas quem fez a atmosfera?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
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
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/n_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.08,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Mapa da trilha: ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.19,
              top: size.height * 0.12,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Haja entre as águas um firmamento que separe águas de águas. Então Deus fez o firmamento e separou as águas que estavam embaixo do firmamento das que estavam por cima. E assim foi. Ao firmamento Deus chamou céu. Passaram-se a tarde e a manhã; esse foi o segundo dia...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.justify,
              top: size.height * 0.25,
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
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/03/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 2 - 3
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/fruta_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E disse Deus: "Ajuntem-se num só lugar as águas que estão debaixo do céu, e apareça a parte seca" E assim foi. À parte seca Deus chamou terra, e chamou mares ao conjunto das águas. E Deus viu que ficou bom. Gênesis 1:6-10',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.justify,
              top: size.height * 0.25,
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
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/fruta_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Um vapor, porém, subia da terra, e regava toda a face da terra. Gênesis 2:6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
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
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/fruta_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Então disse Deus: "Cubra-se a terra de vegetação: plantas que dêem sementes e árvores cujos frutos produzam sementes de acordo com as suas espécies" ...',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.justify,
              top: size.height * 0.3,
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
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/03/2-1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.2,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/fruta_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 2 - 7
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 11,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/fruta_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E assim foi. A terra fez brotar a vegetação: plantas que dão sementes de acordo com as suas espécies, e árvores cujos frutos produzem sementes de acordo com as suas espécies. E Deus viu que ficou bom. Passaram-se a tarde e a manhã; esse foi o terceiro dia. Gênesis 1:6-13"',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.justify,
              top: size.height * 0.2,
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
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planta.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/03/2-2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              bottom: size.height * 0.2,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/fruta_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 2 - 9
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 2,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/folhas.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Deus fez nossa atmosfera, que é formada de um pouco de oxigênio, que respiramos, bastante nitrogênio, que é necessário à vida, e um pouco de dióxido de carbono que as plantas respiram.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.15,
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
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/folhas.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Depois de preparar o ambiente, Deus separou a terra das aguas e então fez as plantas. Podem dizer o nome de algumas plantas? Deus é o maior gênio que existe! O que você acha?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
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
        id: 15,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/mao_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Fazendo as malas:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração - Deus muito obrigado porque o Senhor fez tudo tão perfeito, não existe outro Deus como o Senhor! O Senhor é poderoso.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
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
        id: 16,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/coracao.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.left,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Como é feliz aquele cujo auxílio é o Deus de Jacó, cuja esperança está no Senhor, no seu Deus, que fez os céus e a terra, o mar e tudo o que neles há, e que mantém a sua fidelidade para sempre! Salmos 146:5,6',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.justify,
              top: size.height * 0.25,
              left: size.width * 0.02,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 3,
      nivel: 5,
      page: PageLicao(
        id: 17,
        backgroundPage: Color(0xffe1d434),
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
    ),
  ];

  List<LicaoFlipPage> get licao_trilha_2 => [
    // aquecimento 1 - 1
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/linha_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/luz.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.8,
              top: size.height * 0.1,
              left: size.width * 0.05,
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
              top: size.height * 0.02,
            ),
          ),
          TextosLicao(
            texto: 'Deus criou os céus e a terra - O primeiro dia',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Se você fosse o criador de todas as coisas o quê você criaria primeiro? (Deixe que as crianças troquem ideias, dê as suas também.)',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.35,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/planetas.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/ponto_de_interrogacao.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Imagine que você vai criar um planeta, o que é mais importante? Vocês querem saber o que é mais importante? Querem saber o que Deus fez primeiro?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/linha_mapa.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.11,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Mapa da trilha: ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              left: size.width * 0.19,
              top: size.height * 0.12,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'No princípio Deus criou os céus e a terra. Gênesis 1:1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.30,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Os céus! Vamos olhar lá fora. O que estão vendo? O céu é grande? Será que vemos tudo? Não. E eu acho que quando Deus criou o céu não se podia enxergar nada.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.40,
              left: size.width * 0.1,
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
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height * 0.8,
              top: size.height * 0.2,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/5.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height * 0.8,
              top: size.height * 0.2,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                ' Ele fez o nosso planeta, mas ainda não se podia enxergar. Sabe como eu sei disso? Fechem os olhos como se estivéssemos lá e escutem. (Leia bem pausadamente)',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold21,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.1,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/agua.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mancha_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mancha_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Era a terra sem forma e vazia; trevas cobriam a face do abismo, e o Espírito de Deus se movia sobre a face das águas.  Disse Deus: Haja luz, e houve luz... ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/agua.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mancha_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/mancha_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.1,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Deus viu que a luz era boa, e separou a luz das trevas. Deus chamou à luz dia, e às trevas chamou noite. Passaram-se a tarde e a manhã; esse foi o primeiro dia. Gênesis 1:2-5 ',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic21,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/02/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.02,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    // mapa da trilha 2 - 6
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 2,
      page: PageLicao(
        id: 8,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/mancha_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/ponto_de_interrogacao_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Tudo era escuro, como alguém poderia enxergar? Você consegue enxergar no escuro? E Deus pode enxergar no escuro? Se Ele criou no escuro, então Ele pode!',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/mancha_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/boca.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height * 0.8,
              top: size.height * 0.2,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/haja_luz.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height * 0.8,
              top: size.height * 0.2,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'E então,... Deus fez a luz! Como Ele fez a luz? Só falou? Será que dá para acender a luz falando? Algumas casas já tem controle remoto de voz, mas naquela época isso não existia.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
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
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/mancha_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/boca.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height * 0.8,
              top: size.height * 0.2,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/haja_luz.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height * 0.8,
              top: size.height * 0.2,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Era só o controle de Deus. Ele é o máximo! Depois de haver criado a terra Ele fez a luz. Porque a luz é tão importante assim? (Deixe que falem.) Então vamos agradecer pela luz!',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
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
        id: 11,
        backgroundPage: Color(0xffdfad3d),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/mao.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Fazendo as malas:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração -  Deus nós te agradecemos por ter feito os céus, a terra e a luz para que todas as outras coisas pudessem existir e para podermos enxergar tudo que está ao nosso redor.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
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
        id: 12,
        backgroundPage: Color(0xff976126),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/biblia_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/infinito_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Versículo para memorizar',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.left,
              top: size.height * 0.2,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Antes de nascerem os montes e de criares a terra e o mundo, de eternidade a eternidade tu és Deus. Salmos 90:2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.center,
              top: size.height * 0.28,
              left: size.width * 0.1,
            ),
          ),
        ],
      ),
    ),
    // fazendo as malas mistério
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 2,
      nivel: 5,
      page: PageLicao(
        id: 13,
        backgroundPage: Color(0xffdfad3d),
        imagens: [],
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
    ),
  ];

  List<LicaoFlipPage> get licao_trilha_1 => [
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 1,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/linha.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.6,
              top: size.height * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/olho.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.3,
              height: size.height * 0.3,
              top: size.height * 0.07,
              left: size.width * 0.6,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/bussula.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.35,
              height: size.height * 0.35,
              bottom: 0,
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
            texto: 'Deus existe!',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.08,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'Aquecimento',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Você sabia que quando eu tinha a sua idade os celulares eram diferentes?',
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
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 2,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.2,
              right: 0,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/01/v_1.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.5,
              height: size.height * 0.5,
              top: size.height * 0.07,
              left: size.width * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/01/v_2.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.7,
              height: size.height * 0.4,
              top: size.height * 0.5,
              left: size.width * 0.1,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 1,
      page: PageLicao(
        id: 3,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/2.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.4,
              bottom: 0,
              left: size.width * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/engrenagem.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.25,
              bottom: 0,
              right: size.width * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'A cada dia objetos novos são inventados, e você sabe quem os inventa? O que é um inventor? É uma pessoa que inventa coisas que nunca foram vistas antes. Pode me dizer o nome de algumas invenções? Como será que uma invenção é feita?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.13,
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
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/2.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.4,
              bottom: 0,
              left: size.width * 0.1,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/engrenagem.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.25,
              bottom: 0,
              right: size.width * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Como esse celular foi feito? O que acham? Eu acho que precisa de um plano, um desenho, experiências, colocar as peças juntas. Você acha que precisa de alguém inteligente? E o que você acha do céu? Alguém fez? E a terra? Será que foi alguém? Como podemos saber?',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.1,
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
        id: 5,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/mapadatrilha.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.4,
              top: size.height * 0.03,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/terra.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width * 0.3,
              bottom: 0,
              right: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Mapa da \ntrilha',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBoldTitulo45,
              textAlign: TextAlign.justify,
              left: size.width * 0.35,
              top: size.height * 0.03,
            ),
          ),
          TextosLicao(
            texto: 'Vamos ver o que a Bíblia diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold30,
              textAlign: TextAlign.center,
              top: size.height * 0.27,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto: 'No princípio Deus criou os céus e a terra. Gênesis 1:1',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBoldItalic30,
              textAlign: TextAlign.center,
              top: size.height * 0.4,
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
        id: 6,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/01/v_3.png',
            configuracaoImagem: ConfiguracaoImagem(
              top: size.height * 0.1,
              height: size.height * 0.35,
              left: size.width * 0.05,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/01/v_4.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.35,
              top: size.height * 0.55,
              left: size.width * 0.05,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 2, // mapa da trilha
      page: PageLicao(
        id: 7,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/biblia.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.15,
              top: size.height * 0.05,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/montanha.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.3,
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'A Bíblia começa dizendo que existe Deus. Mas quando ele foi criado? A Bíblia também nos diz:',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.27,
              left: size.width * 0.1,
            ),
          ),
          TextosLicao(
            texto:
                'Antes de nascerem os montes e de criares a terra e o mundo, de eternidade a eternidade tu és Deus. Salmos 90:2',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBoldItalic20,
              textAlign: TextAlign.center,
              top: size.height * 0.47,
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
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/biblia.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.15,
              top: size.height * 0.05,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/montanha.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.3,
              width: size.width,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'O que quer dizer de eternidade a eternidade? O que significa eterno? Algo que não tem princípio nem fim. Então, Deus sempre existiu! Muitas pessoas acham que Deus não existe, o que você acha? Como você acha que Deus é? Sem principio nem fim, como essa aliança.',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.25,
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
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/licoes/01/v_5.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.55,
              top: size.height * 0.13,
              left: size.width * 0.08,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/3.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.3,
              bottom: 0,
              right: 0,
            ),
          ),
        ],
        textos: [],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 2, // mapa da trilha
      page: PageLicao(
        id: 10,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/infinito.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.15,
              left: size.width * 0.25,
              top: size.height * 0.05,
            ),
          ),
          ImagensLicao(
            imagem: 'assets/image/icons/cruz.png',
            configuracaoImagem: ConfiguracaoImagem(
              width: size.width,
              height: size.height * 0.4,
              bottom: 0,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto:
                'Ele é o princípio e o fim de todas as coisas! (Diga às crianças quem é Deus para você).',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimaryBold25,
              textAlign: TextAlign.center,
              top: size.height * 0.30,
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
        id: 11,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/fazendoasmalas.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.2,
              right: 0,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Fazendo as malas:',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.center,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Oração - Vamos agradecer porque Deus existe e ele é mais poderoso do que qualquer coisa ou qualquer pessoa',
            configuracaoTexto: ConfiguracaoTexto(
              style: colorPrimarySemiBold25,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
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
        id: 12,
        backgroundPage: Color(0xff739e59),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/fazendoasmalas.png',
            configuracaoImagem: ConfiguracaoImagem(
              right: 0,
              height: size.height * 0.2,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Versículo para memorizar 1',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
              textAlign: TextAlign.left,
              top: size.height * 0.3,
              left: size.width * 0.01,
            ),
          ),
          TextosLicao(
            texto:
                'Antes de nascerem os montes e de criares a terra e o mundo, de eternidade a eternidade tu és Deus. Salmos 90:2',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimarySemiBoldItalic25,
              textAlign: TextAlign.justify,
              top: size.height * 0.35,
              left: size.width * 0.01,
            ),
          ),
        ],
      ),
    ),
    LicaoFlipPage(
      idModulo: 1,
      idLicao: 1,
      nivel: 5, // mistério
      page: PageLicao(
        id: 12,
        backgroundPage: Color(0xffe1d434),
        imagens: [
          ImagensLicao(
            imagem: 'assets/image/icons/fazendoasmalas.png',
            configuracaoImagem: ConfiguracaoImagem(
              height: size.height * 0.2,
              right: 0,
              top: size.height * 0.05,
            ),
          ),
        ],
        textos: [
          TextosLicao(
            texto: 'Mistério 1 - A voz misteriosa',
            configuracaoTexto: ConfiguracaoTexto(
              alignment: Alignment.topLeft,
              style: colorPrimaryBold20,
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
    ),
  ];
}
