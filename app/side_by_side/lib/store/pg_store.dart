import 'package:flutter/material.dart';
import 'package:side_by_side/data/licao_detalhada.dart';
import 'package:side_by_side/model/devocional.dart';
import 'package:side_by_side/model/licao.dart';
import 'package:side_by_side/model/pg.dart';
import 'package:side_by_side/store/php.dart';
import 'package:side_by_side/utils/exceptions.dart';

class PgStore {
  final IFuncoes repository;

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isEditable = ValueNotifier<bool>(false);

  final ValueNotifier<Pg> pg = ValueNotifier<Pg>(pgNull);

  final ValueNotifier<List<Licaos>> licoes = ValueNotifier<List<Licaos>>([]);

  final ValueNotifier<List<ProgressoLicao>> progressoLicao =
      ValueNotifier<List<ProgressoLicao>>([]);
  final ValueNotifier<List<ProgressoDevocional>> progressoDevocional =
      ValueNotifier<List<ProgressoDevocional>>([]);

  final ValueNotifier<List<ProgressoLicao>> progressoNotifier =
      ValueNotifier<List<ProgressoLicao>>([]);
  final ValueNotifier<List<ProgressoDevocional>> progressoDevocionaisNotifier =
      ValueNotifier<List<ProgressoDevocional>>([]);

  final ValueNotifier<List<Criancas>> listCriancas =
      ValueNotifier<List<Criancas>>([]);

  final ValueNotifier<String> erro = ValueNotifier<String>('');

  final ValueNotifier<bool> isFavoriteModulo = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isSaveModulo = ValueNotifier<bool>(false);

  PgStore({required this.repository});

  Future addPg(String uid) async {
    isLoading.value = true;

    try {
      final result = await repository.addPG(uid);
      return result;
    } on NotFoundException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }

  Future addProgresso(
    String uid,
    String idPg,
    String acao,
    String idModulo,
    String idLicao,
    String dia,
    String check,
  ) async {
    isLoading.value = true;

    try {
      if (acao == 'progresso_licao') {
        /*debugPrint('uid $uid');
        debugPrint('idPg $idPg');
        debugPrint('idModulo $idModulo');
        debugPrint('idLicao $idLicao');
        debugPrint('dia $dia');
        debugPrint('acao $acao');
        debugPrint('check $check');*/

        final result = await repository.addProgressoLicao(
          uid,
          idPg,
          idModulo,
          idLicao,
          acao,
          dia,
          check,
        );
        return result;
      } else {
        final result = await repository.addProgresso(uid, idPg, acao);
        return result;
      }
    } on NotFoundException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }

  Future getPgId(String uid) async {
    isLoading.value = true;

    try {
      final result = await repository.getInformacoesPG(uid);
      pg.value = result;

      final criancas = await repository.getCriancasUser(uid, pg.value.id);
      listCriancas.value = criancas;

      final progresso = await repository.getInformacoesProgresso(
        uid,
        pg.value.id.toString(),
        pg.value.idModulo.toString(),
        pg.value.nLicao.toString(),
        '2',
      );

      debugPrint('progresso PG ${progresso[0].nLicao}');

      progressoLicao.value = progresso;

      final devocionais = await repository.getInformacoesDevocionais(
        uid,
        pg.value.id.toString(),
        pg.value.idModulo.toString(),
        pg.value.nLicao.toString(),
      );
      progressoDevocional.value = devocionais;
    } on NotFoundException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }

  Future<void> progress(
    String uid,
    String idPg,
    String idModulo,
    String idLicao,
  ) async {
    final progresso = await repository.getInformacoesProgresso(
      uid,
      idPg,
      idModulo,
      idLicao,
      '2',
    );
    progressoNotifier.value = progresso;
  }

  Future<void> progressDevocionais(
    String uid,
    String idPg,
    String idModulo,
    String idLicao,
  ) async {
    final progressoDevocionais = await repository.getInformacoesDevocionais(
      uid,
      idPg,
      idModulo,
      idLicao,
    );
    progressoDevocionaisNotifier.value = progressoDevocionais;
  }

  Future getListLicoes(Pg pg) async {
    isLoading.value = true;

    try {
      final result = await repository.getLicoesModuloPG(pg);
      licoes.value = result;
    } on NotFoundException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }

  Future atualizarProgresso(
    int idprogresso,
    String uid,
    String idPg,
    String idModulo,
    String nLicao,
  ) async {
    isLoading.value = true;

    try {
      bool resposta = await repository.updateProgresso(
        idprogresso.toString(),
        uid,
        idPg,
        idModulo,
        nLicao,
      );
      return resposta;
    } on NotFoundException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }

  List<LicaoFlipPage> getlicoesFlip(BuildContext context) {
    // lista reversa
    //final result = repository.licoesFlip(context).reversed.toList();
    // lista ok
    final result = repository.licoesFlip(context);
    return result;
  }

  List<Devocional> getDevocionais(int idModulo, int idLicao) {
    final result =
        repository
            .getDevocionais()
            .where(
              (element) =>
                  element.idModulo == idModulo && element.idLicao == idLicao,
            )
            .toList();
    return result;
  }

  Future<bool> like(String idPg, String uid, String id, bool isLiked) async {
    final result = repository.updateLikeLicao(id, isLiked);

    final progresso = await repository.getInformacoesProgresso(
      uid,
      pg.value.id.toString(),
      pg.value.idModulo.toString(),
      pg.value.nLicao.toString(),
      '2',
    );
    progressoLicao.value = progresso;

    return result;
  }

  Future<bool> likeModulo(
    String idPg,
    String uid,
    String id,
    bool isLiked,
  ) async {
    final result = repository.updateLikeLicao(id, isLiked);

    final progresso = await repository.getInformacoesProgresso(
      uid,
      pg.value.id.toString(),
      pg.value.idModulo.toString(),
      pg.value.nLicao.toString(),
      '2',
    );
    progressoLicao.value = progresso;

    return result;
  }

  Future<bool> saved(String idPg, String uid, String id, bool isSaved) async {
    final result = repository.updateSaveLicao(id, isSaved);
    final progresso = await repository.getInformacoesProgresso(
      uid,
      pg.value.id.toString(),
      pg.value.idModulo.toString(),
      pg.value.nLicao.toString(),
      '2',
    );
    progressoLicao.value = progresso;
    return result;
  }

  void updateFavoriteModulo(String uid, String idModulo, bool isliked) async {
    final dataFavs = await repository.updateLikeModulo(uid, idModulo, isliked);
    isFavoriteModulo.value = dataFavs;
  }

  void updateSavedModulo(String uid, String idModulo, bool isSaved) async {
    final dataSaved = await repository.updateSavedModulo(
      uid,
      idModulo,
      isSaved,
    );
    isSaveModulo.value = dataSaved;
  }

  Future<bool> addCriancas(
    String uid,
    int idPg,
    String nome,
    String idade,
  ) async {
    final result = repository.addCrianca(uid, idPg, nome, idade);
    final criancas = await repository.getCriancasUser(uid, pg.value.id);
    listCriancas.value = criancas;
    return result;
  }

  Future<bool> editarCriancas(
    String uid,
    int idPg,
    int id,
    String nome,
    String idade,
  ) async {
    final result = repository.editCrianca(
      uid,
      idPg,
      id.toString(),
      nome,
      idade,
    );
    final criancas = await repository.getCriancasUser(uid, pg.value.id);
    listCriancas.value = criancas;
    return result;
  }
}
