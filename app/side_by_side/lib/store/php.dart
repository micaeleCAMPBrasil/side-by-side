// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/data/licao.dart';
import 'package:side_by_side/data/licao_detalhada.dart';
import 'package:side_by_side/model/devocional.dart';
import 'package:side_by_side/model/geral.dart';
import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/modulo.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/model/usuario.dart';
import 'package:side_by_side/screens/ADashboardScreen.dart';
import 'package:side_by_side/screens/criancas/AAddChildrenScreen.dart';
import 'package:side_by_side/utils/exceptions.dart';
import 'package:side_by_side/utils/http_client.dart';
import 'package:url_launcher/url_launcher.dart';

List<Modulos> getModulos() {
  List<Modulos> MODULOS_LIST = [
    Modulos(
      id: 1,
      title: 'A Trilha',
      subtitle: 'O Deus Criador\ne eterno',
      descricao:
          'O primeiro modulo do nosso currículo e o de Criacionismo. A Primeira lição trata da existência de Deus, e é a mais importante porque nada faz sentido se não assumirmos que existe um Deus e que Ele é eterno e criador. As lições seguintes desse modulo tratam do que Deus criou e de como Ele criou. Há pequenas experiencias cientificas e dados que ajudarão as crianças a tomarem uma posição firme frente ao evolucionismo pregado nas escolas.\nA Trilha é a base para entender sobre Criacionismo. A primeira lição trata da existência de Deus, e é a mais importante porque nada faz sentido se não assumirmos que existe um Deus e que Ele é eterno e criador. As lições seguintes desse módulo tratam do que Deus criou e de como Ele criou. Há pequenas experiências científicas e dados que ajudarão as crianças a tomarem uma posição firme frente ao evolucionismo pregado nas escolas. A intenção é que elas assumam essa verdade para elas pela fé, porém também com lógica e racionalidade.',
      parte1: 'Aquecimento',
      parte2: 'Mapa da Trilha',
      parte3: 'Fazendo as Malas',
      capa: 'assets/image/capas/trilha.png',
    ),
    Modulos(
      id: 2,
      title: 'O Mergulho',
      subtitle: 'O Pecado',
      descricao:
          'O Mergulho é a base para o arrependimento e mudança de vida. Mostra a condição do homem pecador e distante de Deus. Inicia com informações sobre o inimigo de Deus e o pecado de Adão e Eva, segue com as consequências do pecado, a promessa de um salvador, a provisão e a expulsão do jardim.',
      parte1: 'Embarcando',
      parte2: 'Carta Náutica',
      parte3: 'Mergulhando',
      capa: 'assets/image/capas/mergulho.jpg',
    ),
    Modulos(
      id: 3,
      title: 'O Santuário',
      subtitle: 'A Palavra de Deus',
      descricao:
          'O Santuário é uma nova aventura. Neste terceiro módulo, vocês aprenderão juntos sobre a Palavra de Deus e como ela é digna de toda confiança. Tão digna que devemos construir o nossa vida como santuário de Deus fundamentado nela.',
      parte1: 'Ponte',
      parte2: 'Planta do Santuário',
      parte3: 'Mãos à Obra',
      capa: 'assets/image/capas/santuario.jpg',
    ),
    Modulos(
      id: 4,
      title: 'O Arco',
      subtitle: 'A Salvação em Jesus',
      descricao:
          'O Arco fará vocês lembrarem o pacto que Deus fez com o homem de não o destruir mais através da água, porém a condenação de Deus para com o pecado continuou e a simbologia do arco, que usa a mesma palavra no hebraico para a arma arco, propõe que Deus mostrou ao homem que seu alvo para condenação seria Ele próprio. O próprio Deus entregaria sua vida através de seu filho Jesus para pagar a condenação do pecado.',
      parte1: 'Preparação',
      parte2: 'Plano de Voo',
      parte3: 'Soltando as Cordas',
      capa: 'assets/image/capas/capa-arco.png',
    ),
    Modulos(
      id: 5,
      title: 'A Estação Final',
      subtitle: 'A Eternidade com\nCristo',
      descricao:
          'A Estação Final você e suas crianças vão completar a visão cronológica da Bíblia observando a história, desde a igreja primitiva até o dia em que essa mesma igreja irá viver eternamente com seu Deus.',
      parte1: 'Bilheteria',
      parte2: 'Plataforma',
      parte3: 'Embarque',
      capa: 'assets/image/capas/estacao-final.jpg',
    ),
  ];

  return MODULOS_LIST;
}

var whatsappUrl = "whatsapp://send?phone=5585987169712&text=Olá,tudo bem?";

Future<void> abrirwhatsapp(Uri url) async {
  if (!await launchUrl(url)) {
    debugPrint('Could not launch $url');
  }
}

List<BotoesAcessoRapido> getbotoesRapidos(BuildContext context) {
  List<BotoesAcessoRapido> list = [
    BotoesAcessoRapido(
      title: 'Cadastrar\nmeu(s) filho(s)',
      icon: const Icon(Icons.add_rounded, size: 30, color: black),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AAddChildrenScreen()),
        );
      },
    ),
    BotoesAcessoRapido(
      title: 'Vê todos os\nMódulos',
      icon: const Icon(
        Icons.local_fire_department_outlined,
        size: 30,
        color: black,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ADashboardScreen(index: 1)),
          // MaterialPageRoute(builder: (context) => ASearchFragment()),
        );
      },
    ),
    /*BotoesAcessoRapido(
      title: 'Vê minhas\nAnotações',
      icon: const Icon(Icons.file_copy_outlined, size: 30, color: black),
      onTap: () {},
    ),*/
    BotoesAcessoRapido(
      title: 'Ajuda',
      icon: const Icon(Icons.question_mark_rounded, size: 30, color: black),
      onTap: () => abrirwhatsapp(Uri.parse(whatsappUrl)),
    ),
  ];

  return list;
}

abstract class IFuncoes {
  Future<Usuario> getUsuarioUID(String uid);
  Future<Usuario> criarUsuario(
    String uid,
    String nome,
    String email,
    String senha,
    String telefone,
    String pais,
    String estado,
    String cidade,
    String token,
  );
  Future<bool> updateUser(Usuario usuario);
  Future<bool> loginUser(String uid);
  Future<bool> updateToken(String id, String token);

  Future<bool> addPG(String uid);
  Future<bool> addProgresso(String uid, String idPg, String $red);
  Future<Pg> getInformacoesPG(String uid);
  Future<List<ProgressoLicao>> getInformacoesProgresso(
    String uid,
    String idPg,
    String idModulo,
    String nLicao,
    String x,
  );

  Future<List<Modulos>> getListModulosFavs(String uid);
  Future<List<Modulos>> getListModulosSaves(String uid);

  Future<List<Licaos>> getLicoesModuloPG(Pg pg);
  Future<List<ProgressoDevocional>> getInformacoesDevocionais(
    String uid,
    String idPg,
    String idModulo,
    String nLicao,
  );

  Future<List<Licaos>> getLicoes();
  List<LicaoFlipPage> licoesFlip(BuildContext context);
  List<Devocional> getDevocionais();

  Future<bool> updateProgresso(
    String id,
    String uid,
    String idPg,
    String idModulo,
    String nLicao,
  );
  Future<bool> updateLikeLicao(String id, bool isliked);
  Future<bool> updateSaveLicao(String id, bool issaved);

  Future<bool> addProgressoLicao(
    String uid,
    String idPg,
    String idModulo,
    String idLicao,
    String red,
    String dia,
    String check,
  );

  Future<bool> updateLikeModulo(String id, String idModulo, bool isliked);
  Future<bool> updateSavedModulo(String id, String idModulo, bool isliked);

  Future<List<Criancas>> getCriancasUser(String uid, int idPg);
  Future<bool> addCrianca(String uid, int idPg, String nome, String idade);
  Future<bool> editCrianca(
    String uid,
    int idPg,
    String idCrianca,
    String nome,
    String idade,
  );
  Future<bool> excluirCrianca(String idCrianca);
}

class IFuncoesPHP implements IFuncoes {
  final IHttpClient client;

  IFuncoesPHP({required this.client});

  @override
  Future<List<Modulos>> getListModulosFavs(String uid) async {
    List<Modulos> modulosGeral = getModulos();
    List<Modulos> modulos = [];

    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/getStatusModulos.php?uid=$uid",
    );
    if (response.statusCode == 200) {
      debugPrint("sucesso link - informações getListModulosFavs");

      var consultarPHP = jsonDecode(response.body);

      if (consultarPHP == "dados_vazios") {
        debugPrint("informações getListModulosFavs - dados vazios");
        return [];
      } else if (consultarPHP == "db_erro") {
        debugPrint("informações getListModulosFavs - db_erro");
        return [];
      } else if (consultarPHP == "erro") {
        debugPrint("informações getListModulosFavs - erro");
        return [];
      } else {
        debugPrint("informações getListModulosFavs - sucesso");
        debugPrint("informações getListModulosFavs - $consultarPHP");
        consultarPHP.map((e) {
          int idmodulo = int.parse(e['idModulo'].toString());
          int favorito = int.parse(e['is_fav'].toString());
          if (favorito == 0) {
          } else {
            modulos.add(
              modulosGeral.where((element) => element.id == idmodulo).first,
            );
          }
        }).toList();
        return modulos;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<List<Modulos>> getListModulosSaves(String uid) async {
    List<Modulos> modulosGeral = getModulos();
    List<Modulos> modulos = [];

    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/getStatusModulos.php?uid=$uid",
    );
    if (response.statusCode == 200) {
      debugPrint("sucesso link - informações getListModulosSaves");

      var consultarPHP = jsonDecode(response.body);

      if (consultarPHP == "dados_vazios") {
        debugPrint("informações getListModulosSaves - dados vazios");
        return [];
      } else if (consultarPHP == "db_erro") {
        debugPrint("informações getListModulosSaves - db_erro");
        return [];
      } else if (consultarPHP == "erro") {
        debugPrint("informações getListModulosSaves - erro");
        return [];
      } else {
        debugPrint("informações getListModulosSaves - sucesso");
        consultarPHP.map((e) {
          int idmodulo = int.parse(e['idModulo'].toString());
          int saves = int.parse(e['is_save'].toString());
          if (saves == 0) {
          } else {
            modulos.add(
              modulosGeral.where((element) => element.id == idmodulo).first,
            );
          }
        }).toList();
        return modulos;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  List<LicaoFlipPage> licoesFlip(BuildContext context) {
    final licoes_data = licoesModulos(context);

    //List<LicaoFlipPage> licoes = licoes_data.licao_trilha_8;

    List<LicaoFlipPage> licoes = [
      ...licoes_data.licao_trilha_1,
      ...licoes_data.licao_trilha_2,
      ...licoes_data.licao_trilha_3,
      ...licoes_data.licao_trilha_4,
      ...licoes_data.licao_trilha_5,
      ...licoes_data.licao_trilha_6,
      ...licoes_data.licao_trilha_7,
      ...licoes_data.licao_trilha_8,
    ];

    return licoes;
  }

  @override
  List<Devocional> getDevocionais() {
    List<Devocional> devocionais_list = [
      Devocional(
        id: 1,
        dia: 1,
        idModulo: 1,
        idLicao: 1,
        title: 'A Trilha 1',
        texto:
            'Pense sobre como os pássaros voam. Você acha que precisou alguém inteligente para criar os pássaros? Ou, que ninguém os criou? Deus é criador!',
      ),
      Devocional(
        id: 2,
        dia: 2,
        idModulo: 1,
        idLicao: 1,
        title: 'A Trilha 1',
        texto:
            'A ciência está sempre certa? Antigamente a ciência dizia que a terra era quadrada e também que viemos do macaco. O que você acha? Você sabia que a ciência nunca pôde provar que Deus não existe?',
      ),
      Devocional(
        id: 3,
        dia: 3,
        idModulo: 1,
        idLicao: 1,
        title: 'A Trilha 1',
        texto:
            'Pense em uma aliança de casamento, ela não tem princípio nem fim, é um círculo perfeito, porém ela esconde a emenda. O único ser que não tem princípio nem fim é Deus. Você acredita? Deus é eterno!',
      ),
      Devocional(
        id: 4,
        dia: 4,
        idModulo: 1,
        idLicao: 1,
        title: 'A Trilha 1',
        texto:
            'Você poder ver o vento? Mas você pode ver o que ele produz? Podemos ver Deus? Mas vemos o que Ele faz? Deus é espírito!',
      ),
      Devocional(
        id: 5,
        dia: 5,
        idModulo: 1,
        idLicao: 1,
        title: 'A Trilha 1',
        texto:
            'Faça um desenho de sua casa. Tem algo que está em todos os lugares? O ar! Mas, nem o ar está em todo lugar! E Deus? Você crê que Ele está em todos os lugares?',
      ),
      Devocional(
        id: 6,
        dia: 6,
        idModulo: 1,
        idLicao: 1,
        title: 'A Trilha 1',
        texto:
            'Como conheceu seu melhor amigo? Vocês conversavam? Como conhecer mais sobre Deus? Como a voz de Deus fala conosco? O que a Bíblia nos ensina? Devo obedecê-la? A Bíblia nos mostra quem é Deus!',
      ),
      Devocional(
        id: 7,
        dia: 1,
        idModulo: 1,
        idLicao: 2,
        title: 'A Trilha 2',
        texto:
            'Desligue as luzes. Tente fazer algo. É difícil? É melhor luz ou escuridão? Com a luz conseguimos ver. Você acha que Deus pode nos ajudar a ver o caminho em que andamos! Deus é luz!',
      ),
      Devocional(
        id: 8,
        dia: 2,
        idModulo: 1,
        idLicao: 2,
        title: 'A Trilha 2',
        texto:
            'Olhe a sombra de sua mão. Existe sombra porque a luz não alcança um lado do objeto, ele está escondido. Onde há coisas escondidas não há luz.. Quando mentimos, ficamos na luz ou nas sombras?',
      ),
      Devocional(
        id: 9,
        dia: 3,
        idModulo: 1,
        idLicao: 2,
        title: 'A Trilha 2',
        texto:
            'Observe as cores ao seu redor. Você consegue ver as cores no escuro? As cores só existem por causa da luz. Como seria um mundo sem cores? Graças a Deus pela luz!',
      ),
      Devocional(
        id: 10,
        dia: 4,
        idModulo: 1,
        idLicao: 2,
        title: 'A Trilha 2',
        texto:
            'Um carro pode andar sem o farol? Porque não? O que pode acontecer quando alguém não usa a luz? A Bíblia é nossa luz. Ela nos fala sobre o caminho de Deus!',
      ),
      Devocional(
        id: 11,
        dia: 5,
        idModulo: 1,
        idLicao: 2,
        title: 'A Trilha 2',
        texto:
            'A noite apague as luzes acenda 1 lanterna e foque em um espelho. Veja onde a luz é projetada. A luz faz curvas? Ela viaja em linha reta. Para andar na luz, devemos andar reto. O que é andar reto?',
      ),
      Devocional(
        id: 12,
        dia: 6,
        idModulo: 1,
        idLicao: 2,
        title: 'A Trilha 2',
        texto:
            'Temos mais medo de dia ou à noite? Por quê? Não vemos ninguém. Você sabia que Deus está na escuridão ? Deus cuida de nós!',
      ),
      Devocional(
        id: 13,
        dia: 1,
        idModulo: 1,
        idLicao: 3,
        title: 'A Trilha 3',
        texto:
            'Deus fez o ar que respiramos. Prenda a respiração. O ar é importante? De que ele é feito? O que a poluição faz com o ar? Precisamos cuidar da atmosfera de Deus!',
      ),
      Devocional(
        id: 14,
        dia: 2,
        idModulo: 1,
        idLicao: 3,
        title: 'A Trilha 3',
        texto:
            'Deus fez a atmosfera para nos proteger. Você sabia que em volta da terra a atmosfera forma também uma capa? Quase tudo que entra na atmosfera se desintegra. O que aconteceria sem essa capa?',
      ),
      Devocional(
        id: 15,
        dia: 3,
        idModulo: 1,
        idLicao: 3,
        title: 'A Trilha 3',
        texto:
            'Deus nos deu a chuva. Olhe para o céu. Que cor ele é? Ele não tem cor, vemos as cores por causa da luz e da água na atmosfera. Essa água se transforma em chuva. Para que serve a chuva? E se não houvesse chuva?',
      ),
      Devocional(
        id: 16,
        dia: 4,
        idModulo: 1,
        idLicao: 3,
        title: 'A Trilha 3',
        texto:
            'A terra alimenta as plantas. Vá ao jardim e coloque água em uma planta. Como as plantas se alimentam? Quem fez a terra assim? O que fazer para a terra ficar forte?',
      ),
      Devocional(
        id: 17,
        dia: 5,
        idModulo: 1,
        idLicao: 3,
        title: 'A Trilha 3',
        texto:
            'Faça um sanduiche e acrescente verduras. Para que servem as verduras, legumes e frutas? Que bom que Deus nos deu as plantas!',
      ),
      Devocional(
        id: 18,
        dia: 6,
        idModulo: 1,
        idLicao: 3,
        title: 'A Trilha 3',
        texto:
            'Você sabe como cuidar de plantas? O que o mato faz? As coisas boas em nossa vida são como as plantas e o pecado é como o mato. O que o pecado faz? Memorizar a Palavra de Deus nos protege do pecado!',
      ),
      Devocional(
        id: 19,
        dia: 1,
        idModulo: 1,
        idLicao: 4,
        title: 'A Trilha 4',
        texto:
            'Você sabe a diferença entre  estrelas e planetas? Estrelas são formadas por gases, planetas são sólidos. O sol é uma estrela. E a terra? Você sabia que só a terra tem condições para a vida? E quem a fez?',
      ),
      Devocional(
        id: 20,
        dia: 2,
        idModulo: 1,
        idLicao: 4,
        title: 'A Trilha 4',
        texto:
            'Tente saltar bem distante. Meça e multiplique por 6. Esta é a distância que você pularia se estivesse na lua. Brinque de andar na lua, como seria? Deus fez a lua!',
      ),
      Devocional(
        id: 21,
        dia: 3,
        idModulo: 1,
        idLicao: 4,
        title: 'A Trilha 4',
        texto:
            'O que o sol pode provocar em nós? O que usamos para nos proteger do sol? Você sabia que uma camada da atmosfera foi feita para nos proteger dos raios do sol? Deus nos protege!',
      ),
      Devocional(
        id: 22,
        dia: 4,
        idModulo: 1,
        idLicao: 4,
        title: 'A Trilha 4',
        texto:
            'Deus sempre nos protege. Deus providenciou algo para nos proteger do pior mal. O que é? Por que o pecado nos faz mal? O que Deus nos deu para proteção?  Sua Palavra!',
      ),
      Devocional(
        id: 23,
        dia: 5,
        idModulo: 1,
        idLicao: 4,
        title: 'A Trilha 4',
        texto:
            'Você sabia algumas pessoas colocam nomes nas estrelas? Quem sabe o nome de todas elas? Deus. Ele sabe o seu nome? Você acha que você é mais importante  que uma estrela?',
      ),
      Devocional(
        id: 24,
        dia: 6,
        idModulo: 1,
        idLicao: 4,
        title: 'A Trilha 4',
        texto:
            'Você sabe por que a maré fica cheia e abaixa? Sabia que é por causa da lua? A força de gravidade da lua atrai as águas. Até a lua tem suas tarefas. Tudo para a Glória de Deus!!',
      ),
      Devocional(
        id: 25,
        dia: 1,
        idModulo: 1,
        idLicao: 5,
        title: 'A Trilha 5',
        texto:
            'O que um passarinho precisa para fazer seu ninho? Juntem alguns galhinhos, mato e cola e tente fazer um ninho. Quanto trabalho! Quem ensinou o pássaro a fazer? Deus já os fez sabendo!  Deus fez tudo perfeito!',
      ),
      Devocional(
        id: 26,
        dia: 2,
        idModulo: 1,
        idLicao: 5,
        title: 'A Trilha 5',
        texto:
            'Pegue papel e faça aviões diferentes, brinque com eles. Pense: Como as aves conseguem voar? Elas são tão diferentes! Deus é criativo! Que tipos de aves são suas preferidas?',
      ),
      Devocional(
        id: 27,
        dia: 3,
        idModulo: 1,
        idLicao: 5,
        title: 'A Trilha 5',
        texto:
            'Abra a geladeira. Quais os alimentos que são de origem animal? E vegetal? Cada um deles é útil para nossa saúde? Quais os melhores? Você tem escolhido bem os alimentos que Deus lhe deu?',
      ),
      Devocional(
        id: 28,
        dia: 4,
        idModulo: 1,
        idLicao: 5,
        title: 'A Trilha 5',
        texto:
            'Observe um formigueiro. O que podemos aprender com as formigas? Para que elas trabalham? Elas cooperam umas com as outras? A natureza que Deus criou nos ensina?',
      ),
      Devocional(
        id: 29,
        dia: 5,
        idModulo: 1,
        idLicao: 5,
        title: 'A Trilha 5',
        texto:
            'Deus quer que cuidemos da natureza? Faça algum brinquedo, usando reciclagem. Estará ajudando a cuidar do planeta!',
      ),
      Devocional(
        id: 30,
        dia: 6,
        idModulo: 1,
        idLicao: 5,
        title: 'A Trilha 5',
        texto:
            'Pegue uma folha de papel e coloque as palavras Respeite, Reduza e Reuse (os 3 Rs da natureza). Pense em coisas práticas para fazer e não fazer, que podem ajudar a natureza  que Deus nos deu.',
      ),
      Devocional(
        id: 31,
        dia: 1,
        idModulo: 1,
        idLicao: 6,
        title: 'A Trilha 6',
        texto:
            'Deus formou o homem. Qual a diferença entre formar e criar? O que Deus criou? O que Ele formou? Deus usou Suas mãos? E como o homem ganhou vida? De onde veio o sopro? Nossa vida vem de quem?',
      ),
      Devocional(
        id: 32,
        dia: 2,
        idModulo: 1,
        idLicao: 6,
        title: 'A Trilha 6',
        texto:
            'Deus fez o homem perfeito. Faça uma massa usando 1 xic. de trigo, 1 col. de chá de  sal, 1 pingo de óleo e água até ficar macia, Tente fazer um homem. Difícil? Como Deus é artista!',
      ),
      Devocional(
        id: 33,
        dia: 3,
        idModulo: 1,
        idLicao: 6,
        title: 'A Trilha 6',
        texto:
            'Deus fez o homem parecido com Deus? Mas, um é escuro, outro loiro, como somos parecidos? Somos parecidos porque pensamos, inventamos, amamos...',
      ),
      Devocional(
        id: 34,
        dia: 4,
        idModulo: 1,
        idLicao: 6,
        title: 'A Trilha 6',
        texto:
            'Deus fez o homem parecido com Deus? Mas, um é escuro, outro loiro, como somos parecidos? Somos parecidos porque pensamos, inventamos, amamos...',
      ),
      Devocional(
        id: 35,
        dia: 5,
        idModulo: 1,
        idLicao: 6,
        title: 'A Trilha 6',
        texto:
            'O dono de um carro pode fazer o que quiser com ele? Se ele estragar, oque acontece? Deus mandou o homem dominar a terra, dominar é estragar ou cuidar?. Como podemos cuidar bem dela?',
      ),
      Devocional(
        id: 36,
        dia: 6,
        idModulo: 1,
        idLicao: 6,
        title: 'A Trilha 6',
        texto:
            'Você sabe qual o lema de várias polícias do mundo? Servir e proteger! Você lembra o que Deus falou para Adão fazer no Jardim? Trabalhar nele e guardá-lo. Como podemos servir e proteger o que Deus nos deu?',
      ),
      Devocional(
        id: 37,
        dia: 1,
        idModulo: 1,
        idLicao: 7,
        title: 'A Trilha 7',
        texto:
            'O que você vai fazer amanhã? Deus sabe tudo o que acontece, o que aconteceu e o que acontecerá. Ele sabe o que vamos precisar amanhã? Então devemos ficar preocupados ou ansiosos? O que acha?',
      ),
      Devocional(
        id: 38,
        dia: 2,
        idModulo: 1,
        idLicao: 7,
        title: 'A Trilha 7',
        texto:
            'Faça uma lista de coisas que você quer ter. Agora só deixe o que realmente você precisa. Porque precisa?. A lista diminuiu? Quem pode lhe dar estas coisas? E se Ele não der? Por que será?',
      ),
      Devocional(
        id: 39,
        dia: 3,
        idModulo: 1,
        idLicao: 7,
        title: 'A Trilha 7',
        texto:
            'Você já viu algum colega falar sobre namorar? O que você acha disso? Será que é o tempo certo?  Deus nos dá tudo na hora certa! O que acha?',
      ),
      Devocional(
        id: 40,
        dia: 4,
        idModulo: 1,
        idLicao: 7,
        title: 'A Trilha 7',
        texto:
            'Porque Deus fez o homem antes da mulher? Porque Ele é quem deveria protegê-la, e ter responsabilidade por ela diante de Deus. Quem é mais sensível? Quem tem os filhos? Os 2 se completam? O que acha?',
      ),
      Devocional(
        id: 41,
        dia: 5,
        idModulo: 1,
        idLicao: 7,
        title: 'A Trilha 7',
        texto:
            'Porque Deus fez a mulher? Qual a tarefa dela? O homem pode ter filhos? Sem a mulher o que aconteceria?',
      ),
      Devocional(
        id: 42,
        dia: 6,
        idModulo: 1,
        idLicao: 7,
        title: 'A Trilha 7',
        texto:
            'Por que Deus fez o homem? Qual a tarefa dele? Só liderar? Não! Com liderança vem responsabilidade. É bom para a mulher sustentar e ter toda a responsabilidade? Sem o homem o que aconteceria?  E sem a mulher?',
      ),
      Devocional(
        id: 43,
        dia: 1,
        idModulo: 1,
        idLicao: 8,
        title: 'A Trilha 8',
        texto:
            'Seu coração bate sempre da mesma maneira? Quando dormimos nosso coração e corpo descansam e se recuperam. Que bom que Deus fez o descanso! Quando você descansa?',
      ),
      Devocional(
        id: 44,
        dia: 2,
        idModulo: 1,
        idLicao: 8,
        title: 'A Trilha 8',
        texto:
            'Programe um tempo para ajudar alguém. O que você acha do trabalho? Você conseguiria trabalhar como um adulto? Mas será que pode ter um tempo de trabalho em casa?',
      ),
      Devocional(
        id: 45,
        dia: 3,
        idModulo: 1,
        idLicao: 8,
        title: 'A Trilha 8',
        texto:
            'Sempre que ligamos no celular, a pessoa atende? Às vezes dá ocupado! Você sabia que a ligação para Deus nunca está ocupada? Pode orar  todo o tempo! Já separou um tempo para falar com Deus?',
      ),
      Devocional(
        id: 46,
        dia: 4,
        idModulo: 1,
        idLicao: 8,
        title: 'A Trilha 8',
        texto:
            'Você gosta de brincar? Será que sua família poderia passar o dia todo brincando? Por que não? Mas é bom ter um tempo para se divertir!',
      ),
      Devocional(
        id: 47,
        dia: 5,
        idModulo: 1,
        idLicao: 8,
        title: 'A Trilha 8',
        texto:
            'Pense no seu dia. Qual o tempo de adorar a Deus? A Bíblia diz “Quer comais, quer bebais fazei tudo para a glória de Deus”. Quando devemos adorar a Deus então?',
      ),
      Devocional(
        id: 48,
        dia: 6,
        idModulo: 1,
        idLicao: 8,
        title: 'A Trilha 8',
        texto:
            'Quanto tempo é 1 segundo? E 1 minuto? E 1 hora? É muito tempo? Às vezes temos que esperar por horas. É bom esperar? E se você souber que se esperar terá algo melhor? Às vezes é tempo de esperar pelo relógio de Deus porque Ele sabe a hora certa!',
      ),
    ];

    return devocionais_list;
  }

  @override
  Future<Usuario> criarUsuario(
    String uid,
    String nome,
    String email,
    String senha,
    String telefone,
    String pais,
    String estado,
    String cidade,
    String token,
  ) async {
    debugPrint("chamando a função - Criar Usuário");

    //Position position = await Geolocator.getCurrentPosition();

    try {
      /*List<Placemark> locais =
          await placemarkFromCoordinates(position.latitude, position.longitude);*/
      debugPrint('UID $uid');
      debugPrint('Nome $nome');
      debugPrint('Email $email');
      debugPrint('Senha $senha');
      debugPrint('Telefone $telefone');
    } catch (e) {
      debugPrint('erro');
    }

    /*String pais = locais[0].country.toString();
    String estado = locais[0].administrativeArea.toString();
    String cidade = locais[0].subAdministrativeArea.toString();*/

    //debugPrint('Pais $pais');
    //debugPrint('Estado $estado');
    //debugPrint('Cidade $cidade');

    Usuario usuarioFinal = usuarioNull;
    //return usuarioFinal;
    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/login.php?uid=$uid&nome=$nome&email=$email&senha=$senha&pais=$pais&estado=$estado&cidade=$cidade&telefone=$telefone&token=$token",
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      debugPrint('body - $body');

      if (body == 'dados_vazios') {
        usuarioFinal = usuarioNull;
      } else if (body == 'Database erro') {
        usuarioFinal = usuarioNull;
      } else {
        body.map((users) {
          Usuario userConvertido = Usuario.fromMap(users);
          usuarioFinal = userConvertido;
        }).toList();
      }
      return usuarioFinal;
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> updateToken(String id, String token) async {
    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/update_token.php?id=$id&token=$token",
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      debugPrint('body - $body');

      if (body == 'erro_na_edicao') {
        return false;
      } else if (body == 'dados_vazios') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else {
        return true;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> loginUser(String uid) async {
    final response = await client.get(
      url: "https://sidebyside.campbrasil.com/api/php/login.php?uid=$uid",
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      debugPrint('body - $body');

      if (body == 'vc_precisa_se_cadastrar') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else {
        return true;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> updateUser(Usuario usuario) async {
    String uid = usuario.uid;
    String nome = usuario.nome;
    String email = usuario.email;
    String phone = usuario.telefone;
    String foto = usuario.foto;
    String token = usuario.tokenAlert;
    String pais = usuario.pais;
    String estado = usuario.estado;
    String cidade = usuario.cidade;

    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/updateUser.php?uid=$uid&nome=$nome&email=$email&phone=$phone&pais=$pais&estado=$estado&cidade=$cidade&photo=$foto&token=$token",
    );
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      debugPrint("resposta - $body");
      if (body == 'dados_vazios') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else {
        return true;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<Usuario> getUsuarioUID(String uid) async {
    debugPrint('Chamando a função!');

    final response = await client.get(
      url: "https://sidebyside.campbrasil.com/api/php/getUIDUser.php?uid=$uid",
    );

    if (response.statusCode == 200) {
      Usuario usuarioFinal = usuarioNull;

      final body = jsonDecode(response.body);

      if (body == 'dados_vazios') {
        return usuarioFinal;
      } else if (body == 'Database erro') {
        return usuarioFinal;
      } else {
        body.map((users) {
          Usuario userConvertido = Usuario.fromMap(users);
          usuarioFinal = userConvertido;
        }).toList();
      }
      return usuarioFinal;
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<Pg> getInformacoesPG(String uid) async {
    Pg pgBase = pgNull;
    final response = await client.get(
      url: "https://sidebyside.campbrasil.com/api/php/getPG.php?id=$uid",
    );
    if (response.statusCode == 200) {
      debugPrint("sucesso link - informações pg");

      var consultarPHP = jsonDecode(response.body);

      if (consultarPHP == "dados_vazios") {
        debugPrint("informações pg - dados vazios");
        return pgBase;
      } else if (consultarPHP == "db_erro") {
        debugPrint("informações pg - db_erro");
        return pgBase;
      } else if (consultarPHP == "erro") {
        debugPrint("informações pg - erro");
        return pgBase;
      } else {
        debugPrint("informações pg - sucesso");

        consultarPHP.map((e) {
          Pg userConvertido = Pg.fromMap(e);
          pgBase = userConvertido;
        }).toList();

        return pgBase;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> addPG(String uid) async {
    final response = await client.get(
      url: "https://sidebyside.campbrasil.com/api/php/addPG.php?uid=$uid",
    );
    if (response.statusCode == 200) {
      debugPrint("sucesso link - informações pg");

      var consultarPHP = jsonDecode(response.body);

      if (consultarPHP == "dados_vazios") {
        debugPrint("cadastro pg- dados vazios");
        return false;
      } else if (consultarPHP == "db_erro") {
        debugPrint("cadastro pg- db_erro");
        return false;
      } else if (consultarPHP == "erro") {
        debugPrint("cadastro pg- erro");
        return false;
      } else {
        debugPrint("cadastro pg - sucesso");
        return true;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> addProgresso(String uid, String idPg, String red) async {
    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/addProgresso.php?x=$red&uid=$uid&idPG=$idPg",
    );
    if (response.statusCode == 200) {
      debugPrint("sucesso link - informações progresso");

      var consultarPHP = jsonDecode(response.body);

      if (consultarPHP == "dados_vazios") {
        debugPrint("cadastro progresso- dados vazios");
        return false;
      } else if (consultarPHP == "db_erro") {
        debugPrint("cadastro progresso- db_erro");
        return false;
      } else if (consultarPHP == "erro") {
        debugPrint("cadastro progresso- erro");
        return false;
      } else if (consultarPHP == "sucesso") {
        debugPrint("cadastro progresso - sucesso");
        return true;
      } else {
        return false;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> addProgressoLicao(
    String uid,
    String idPg,
    String idModulo,
    String idLicao,
    String red,
    String dia,
    String check,
  ) async {
    debugPrint('uid $uid');
    debugPrint('idPg $idPg');
    debugPrint('idModulo $idModulo');
    debugPrint('idLicao $idLicao');
    debugPrint('dia $dia');
    debugPrint('check $check');
    debugPrint('red $red');

    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/addProgresso.php?x=$red&uid=$uid&idPG=$idPg&idModulo=$idModulo&idLicao=$idLicao&dia=$dia&check=$check",
    );

    String url =
        "https://sidebyside.campbrasil.com/api/php/addProgresso.php?x=$red&uid=$uid&idPG=$idPg&idModulo=$idModulo&idLicao=$idLicao&dia=$dia&check=$check";

    debugPrint('url $url');

    if (response.statusCode == 200) {
      var consultarPHP = jsonDecode(response.body);
      debugPrint("sucesso link - informações progresso $consultarPHP");

      if (consultarPHP == "dados_vazios") {
        debugPrint("cadastro progresso- dados vazios");
        return false;
      } else if (consultarPHP == "db_erro") {
        debugPrint("cadastro progresso- db_erro");
        return false;
      } else if (consultarPHP == "erro_cadastro" ||
          consultarPHP == "erro_na_edicao") {
        debugPrint("cadastro progresso- erro");
        return false;
      } else if (consultarPHP == "sucesso") {
        debugPrint("cadastro progresso - sucesso");
        return true;
      } else {
        return false;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<List<ProgressoLicao>> getInformacoesProgresso(
    String uid,
    String idPg,
    String idModulo,
    String nLicao,
    String x,
  ) async {
    List<ProgressoLicao> progressoBase = [];

    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/getProgresso.php?idLider=$uid&idPg=$idPg&idModulo=$idModulo&nLicao=$nLicao&x=$x",
    );
    if (response.statusCode == 200) {
      String url =
          "https://sidebyside.campbrasil.com/api/php/getProgresso.php?idLider=$uid&idPg=$idPg&idModulo=$idModulo&nLicao=$nLicao&x=$x";

      debugPrint("sucesso link - informações progresso lição url $url");

      var consultarPHP = jsonDecode(response.body);

      if (consultarPHP == "dados_vazios") {
        debugPrint("informações progresso lição - dados vazios");
        return [];
      } else if (consultarPHP == "db_erro") {
        debugPrint("informações progresso lição - db_erro");
        return [];
      } else if (consultarPHP == "erro") {
        debugPrint("informações progresso lição - erro");
        return [];
      } else {
        debugPrint("informações progresso lição - sucesso");

        consultarPHP.map((e) {
          ProgressoLicao progressoConvertido = ProgressoLicao.fromMap(e);
          progressoBase.add(progressoConvertido);
        }).toList();

        return progressoBase;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<List<ProgressoDevocional>> getInformacoesDevocionais(
    String uid,
    String idPg,
    String idModulo,
    String nLicao,
  ) async {
    List<ProgressoDevocional> progressoBase = [];

    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/getQtdDevocional.php?idLider=$uid&idPg=$idPg&idModulo=$idModulo&nLicao=$nLicao&x=2",
    );
    if (response.statusCode == 200) {
      var consultarPHP = jsonDecode(response.body);

      if (consultarPHP == "dados_vazios") {
        debugPrint("informações progresso devocionais - dados vazios");
        return [];
      } else if (consultarPHP == "db_erro") {
        debugPrint("informações progresso devocionais - db_erro");
        return [];
      } else if (consultarPHP == "erro") {
        debugPrint("informações progresso devocionais - erro");
        return [];
      } else {
        debugPrint("informações progresso devocionais - sucesso $consultarPHP");
        consultarPHP.map((e) {
          ProgressoDevocional progressoConvertido = ProgressoDevocional.fromMap(
            e,
          );
          progressoBase.add(progressoConvertido);
        }).toList();
        return progressoBase;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<List<Licaos>> getLicoes() async {
    List<Licaos> LICOES_LIST = [];
    debugPrint('chamando a função getLicoes');

    final response = await client.get(
      url: "https://sidebyside.campbrasil.com/api/php/getLicoes.php",
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      if (body == 'dados_vazios') {
        return LICOES_LIST;
      } else if (body == 'Database erro') {
        return LICOES_LIST;
      } else {
        body.map((e) {
          Licaos eConvertido = Licaos.fromMap(e);
          LICOES_LIST.add(eConvertido);
        }).toList();
      }
      return LICOES_LIST;
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> updateLikeLicao(String id, bool isliked) async {
    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/updateLike.php?id=$id&like=$isliked",
    );
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      if (body == 'dados_vazios') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else {
        return true;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> updateSaveLicao(String id, bool issaved) async {
    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/updateSaves.php?id=$id&save=$issaved",
    );
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      if (body == 'dados_vazios') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else {
        return true;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<List<Licaos>> getLicoesModuloPG(Pg pg) async {
    debugPrint('chamando a função');
    List<Licaos> listLicoes = await getLicoes();
    List<Licaos> list =
        listLicoes.where((element) => element.idModulo == pg.idModulo).toList();
    debugPrint('list - ${list.length}');
    return list;
  }

  @override
  Future<bool> updateProgresso(
    String id,
    String uid,
    String idPg,
    String idModulo,
    String nLicao,
  ) async {
    debugPrint('chamando a função updateProgresso');

    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/updateProgresso.php?id=$id&idLider=$uid&idPg=$idPg&idModulo=$idModulo&nLicao=$nLicao",
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      debugPrint('resposta $body');

      if (body == 'dados_vazios') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else {
        return true;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<List<Criancas>> getCriancasUser(String uid, int idPg) async {
    List<Criancas> CRIANCAS_LIST = [];
    debugPrint('chamando a função getCriancasUser');

    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/getCriancasUser.php?uid=$uid&idPg=$idPg",
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      if (body == 'dados_vazios') {
        return CRIANCAS_LIST;
      } else if (body == 'Database erro') {
        return CRIANCAS_LIST;
      } else {
        debugPrint('CRIANÇAS - $body');
        body.map((e) {
          Criancas eConvertido = Criancas.fromMap(e);
          CRIANCAS_LIST.add(eConvertido);
        }).toList();
      }
      return CRIANCAS_LIST;
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> addCrianca(
    String uid,
    int idPg,
    String nome,
    String idade,
  ) async {
    debugPrint('chamando a função addCrianca');

    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/addCriancas.php?uid=$uid&idpg=$idPg&nome=$nome&idade=$idade",
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      debugPrint('resposta $body');

      if (body == 'dados_vazios') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else if (body == 'ja_cadastrado') {
        return false;
      } else if (body == 'erro') {
        return false;
      } else if (body == 'sucesso') {
        return true;
      } else {
        return false;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> editCrianca(
    String uid,
    int idPg,
    String idCrianca,
    String nome,
    String idade,
  ) async {
    debugPrint('chamando a função addCrianca');

    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/editCriancas.php?uid=$uid&idpg=$idPg&idCrianca=$idCrianca&nome=$nome&idade=$idade",
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      debugPrint('resposta $body');

      if (body == 'dados_vazios') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else if (body == 'crianca_n_encontrada') {
        return false;
      } else if (body == 'erro_na_edicao') {
        return false;
      } else if (body == 'sucesso') {
        return true;
      } else {
        return false;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> excluirCrianca(String uid) async {
    debugPrint('chamando a função addCrianca');

    final response = await client.get(
      url: "https://sidebyside.campbrasil.com/api/php/addCriancas.php?uid=$uid",
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      debugPrint('resposta $body');

      if (body == 'dados_vazios') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else if (body == 'ja_cadastrado') {
        return false;
      } else if (body == 'erro') {
        return false;
      } else if (body == 'sucesso') {
        return true;
      } else {
        return false;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> updateLikeModulo(
    String id,
    String idModulo,
    bool isliked,
  ) async {
    debugPrint('bool like - $isliked');
    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/updateLikeModulo.php?uid=$id&idModulo=$idModulo&like=$isliked",
    );
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      debugPrint('update like $body');
      if (body == 'dados_vazios') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else {
        return true;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }

  @override
  Future<bool> updateSavedModulo(
    String id,
    String idModulo,
    bool issaved,
  ) async {
    debugPrint('bool like - $issaved');
    final response = await client.get(
      url:
          "https://sidebyside.campbrasil.com/api/php/updateSavedModulo.php?uid=$id&idModulo=$idModulo&saved=$issaved",
    );
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      debugPrint('update like $body');
      if (body == 'dados_vazios') {
        return false;
      } else if (body == 'Database erro') {
        return false;
      } else {
        return true;
      }
    } else if (response.statusCode == 404) {
      throw NotFoundException("A url informada não é válida.");
    } else {
      throw Exception("Não foi possível carregar os usuários.");
    }
  }
}
