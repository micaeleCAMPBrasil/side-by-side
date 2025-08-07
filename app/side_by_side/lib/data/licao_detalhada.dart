import 'package:flutter/material.dart';

class DetalhesModulos {
  int idModulo;
  String nome, descricao, assets;

  DetalhesModulos(this.idModulo, this.nome, this.descricao, this.assets);
}

// ignore: non_constant_identifier_names
List<DetalhesModulos> listDetalhesModulos = [
  // trilha
  DetalhesModulos(
    1,
    'Aquecimento',
    'Uma introdução leve e envolvente que prepara o coração e a mente da criança para a lição principal. É como o “aquecimento” antes de uma caminhada — desperta a curiosidade, faz perguntas e cria conexão com o tema do dia.',
    'assets/image/appetit/info1.png',
  ),
  DetalhesModulos(
    1,
    'Mapa da Trilha',
    'É a lição principal — o caminho a ser seguido naquele encontro. Aqui a criança vai explorar o ensino bíblico de forma clara e prática, entendendo quem é Deus, o que Ele criou e como isso afeta sua vida. É a trilha que guia todo o discipulado',
    'assets/image/icons/mapadatrilha.png',
  ),
  DetalhesModulos(
    1,
    'Fazendo as Malas',
    'Momento de encerramento e aplicação. A criança “empacota” aquilo que aprendeu para levar consigo durante a semana. Inclui uma oração, reflexão e incentivo para colocar em prática o que foi aprendido.',
    'assets/image/icons/fazendoasmalas.png',
  ),
  DetalhesModulos(
    1,
    'Versículo',
    'Um versículo-chave da Bíblia para memorizar durante a semana. Ele reforça a verdade da lição e ajuda a criança a guardar a Palavra de Deus no coração.',
    'assets/image/icons/versiculo.png',
  ),
  DetalhesModulos(
    1,
    'Mistérios',
    'Um momento investigativo e divertido onde a criança precisa descobrir ou resolver um “mistério” relacionado ao conteúdo. Ajuda a fixar a lição de forma lúdica, incentivando o pensamento crítico e a curiosidade.',
    'assets/image/icons/misterios.png',
  ),
  DetalhesModulos(
    1,
    'Semanários',
    'Desafios e pequenas tarefas diárias que mantêm a criança conectada à lição ao longo da semana. Estimulam a prática do que foi aprendido e criam um ritmo de discipulado diário.',
    'assets/image/icons/semanarios.png',
  ),
  // mergulho
  DetalhesModulos(
    2,
    'Embarcando',
    'Momento inicial que introduz a criança na lição. É como subir no barco antes do mergulho — uma introdução leve, que desperta interesse e prepara para o ensino principal.',
    'assets/image/icons/mergulho.png',
  ),
  DetalhesModulos(
    2,
    'Carta Náutica',
    'É o roteiro principal da lição, como um mapa de navegação. Aqui a criança aprende, de forma clara e bíblica, sobre o pecado, as consequências, e a esperança que Deus oferece.',
    'assets/image/icons/mergulho.png',
  ),
  DetalhesModulos(
    2,
    'Mergulhando',
    'Momento de encerramento, aplicação e reflexão. A criança “mergulha” mais fundo, guarda o aprendizado no coração, ora e é desafiada a viver aquilo que aprendeu.',
    'assets/image/icons/mergulho.png',
  ),
  DetalhesModulos(
    2,
    'Versículo',
    'Um versículo da Bíblia para memorizar, que reforça a verdade da lição e ajuda na transformação da vida da criança.',
    'assets/image/icons/versiculo.png',
  ),
  DetalhesModulos(
    2,
    'Mistérios',
    'Desafio investigativo ou curiosidade que conecta a criança ao tema, de forma divertida, ajudando na fixação do conteúdo.',
    'assets/image/icons/misterios.png',
  ),
  DetalhesModulos(
    2,
    'Semanários',
    'Desafios e atividades para a criança fazer durante a semana, mantendo a conexão com a lição e incentivando a prática diária.',
    'assets/image/icons/semanarios.png',
  ),
  // santuario
  DetalhesModulos(
    3,
    'Ponte',
    'A introdução da lição. Como uma ponte, conecta o mundo da criança ao tema do dia, despertando interesse e curiosidade para atravessar e descobrir o que Deus tem a ensinar.',
    'assets/image/icons/santuario.png',
  ),
  DetalhesModulos(
    3,
    'Planta do Santuário',
    'É o ensino principal. Assim como um santuário precisa de um projeto firme, a lição mostra que a vida cristã precisa ser construída sobre a Palavra. Aqui, a criança descobre verdades fundamentais para edificar sua fé.',
    'assets/image/icons/santuario.png',
  ),
  DetalhesModulos(
    3,
    'Mãos à Obra',
    'Encerramento prático. É hora de colocar em ação o que foi aprendido, com oração, reflexão e incentivo para viver como “casa de Deus” durante a semana.',
    'assets/image/icons/santuario.png',
  ),
  DetalhesModulos(
    3,
    'Versículo',
    'Versículo para memorização que reforça o conteúdo e convida a criança a guardar a Palavra no coração.',
    'assets/image/icons/versiculo.png',
  ),
  DetalhesModulos(
    3,
    'Mistérios',
    'Atividade de descoberta ou investigação para tornar a lição mais envolvente e reforçar os aprendizados com criatividade.',
    'assets/image/icons/misterios.png',
  ),
  DetalhesModulos(
    3,
    'Semanários',
    'Tarefas ou desafios diários para manter o conteúdo ativo no dia a dia da criança, incentivando hábitos espirituais.',
    'assets/image/icons/semanarios.png',
  ),
  // arco
  DetalhesModulos(
    4,
    'Preparação',
    'É a introdução. Um momento para preparar o coração, alinhar os pensamentos e abrir espaço para o entendimento da aliança e do amor de Deus.',
    'assets/image/icons/arco.png',
  ),
  DetalhesModulos(
    4,
    'Plano de Voo',
    'O ensino principal da lição. Assim como um piloto precisa de um plano para voar, aqui a criança vai entender o plano de Deus: o pacto, a justiça e a salvação através de Jesus, que se ofereceu no lugar da humanidade.',
    'assets/image/icons/arco.png',
  ),
  DetalhesModulos(
    4,
    'Soltando as Cordas',
    'Momento de encerramento e aplicação. A ideia é soltar as cordas que prendem — pecados, medos, dúvidas — e confiar no amor e na promessa de Deus. Inclui oração, reflexão e desafio de viver essa verdade no dia a dia.',
    'assets/image/icons/arco.png',
  ),
  DetalhesModulos(
    4,
    'Versículo',
    'Um versículo da Bíblia para memorizar, que reforça a mensagem da aliança, do perdão e da graça de Deus.',
    'assets/image/icons/versiculo.png',
  ),
  DetalhesModulos(
    4,
    'Mistérios',
    'Uma atividade divertida e investigativa, que ajuda as crianças a compreenderem e fixarem os princípios da lição.',
    'assets/image/icons/misterios.png',
  ),
  DetalhesModulos(
    4,
    'Semanários',
    'Desafios e práticas diárias para que as crianças permaneçam firmes na aliança com Deus e vivam aquilo que aprenderam durante a semana.',
    'assets/image/icons/semanarios.png',
  ),
  // estação final
  DetalhesModulos(
    5,
    'Bilheteria',
    'A introdução da lição. Aqui a criança “compra o bilhete” para essa viagem final, sendo recebida com entusiasmo e começando a refletir sobre o lugar onde está na história de Deus.',
    'assets/image/icons/estacao_final.png',
  ),
  DetalhesModulos(
    5,
    'Plataforma',
    'É o ensino principal. A criança entende o panorama da história bíblica desde o Novo Testamento até a promessa do céu. Aprende que a igreja continua viva, atuante, e que ela faz parte dessa missão.',
    'assets/image/icons/estacao_final.png',
  ),
  DetalhesModulos(
    5,
    'Embarque',
    'Encerramento com aplicação prática. É hora de entrar no “trem” da fé e seguir a jornada, vivendo como alguém que tem um destino eterno com Deus. Inclui oração, reflexão e desafio de viver com esperança e propósito.',
    'assets/image/icons/estacao_final.png',
  ),
  DetalhesModulos(
    5,
    'Versículo',
    'Um versículo bíblico para memorizar que reforça a certeza da salvação e da esperança eterna.',
    'assets/image/icons/versiculo.png',
  ),
  DetalhesModulos(
    5,
    'Mistérios',
    'Atividade investigativa que ajuda a criança a descobrir e relembrar momentos importantes da história da igreja e o plano de Deus.',
    'assets/image/icons/misterios.png',
  ),
  DetalhesModulos(
    5,
    'Semanários',
    'Desafios e práticas para a semana que reforçam o senso de missão e pertencimento à igreja de Cristo.',
    'assets/image/icons/semanarios.png',
  ),
];

class ConfiguracaoTexto {
  TextStyle style;
  TextAlign textAlign;
  double top, bottom, left, right;
  Alignment alignment;
  ConfiguracaoTexto({
    required this.style,
    required this.textAlign,
    this.alignment = Alignment.topCenter,
    this.top = 0,
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
  });
}

class ConfiguracaoImagem {
  double? width, height;

  double? top, bottom, left, right;

  ConfiguracaoImagem({
    this.width,
    this.height,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });
}

class LicaoFlipPage {
  int idModulo, idLicao, nivel;
  PageLicao page;

  LicaoFlipPage({
    required this.idModulo,
    required this.idLicao,
    required this.nivel,
    required this.page,
  });
}

class PageLicao {
  int id;
  Color? backgroundPage;
  List<ImagensLicao> imagens;
  List<TextosLicao> textos;
  PageLicao({
    required this.id,
    this.backgroundPage,
    required this.imagens,
    required this.textos,
  });
}

class ImagensLicao {
  String? imagem;
  ConfiguracaoImagem? configuracaoImagem;
  ImagensLicao({this.imagem, this.configuracaoImagem});
}

class TextosLicao {
  String texto;
  ConfiguracaoTexto configuracaoTexto;
  TextosLicao({required this.texto, required this.configuracaoTexto});
}
