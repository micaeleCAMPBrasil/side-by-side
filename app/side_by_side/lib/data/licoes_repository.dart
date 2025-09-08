import 'package:flutter/material.dart';
import 'package:side_by_side/data/licao.dart';
import 'package:side_by_side/data/licao_detalhada.dart';

class LicoesRepository {
  // ✅ lista reativa
  final ValueNotifier<List<LicaoFlipPage>> licoesNotifier =
      ValueNotifier<List<LicaoFlipPage>>([]);

  void carregarLicoes(BuildContext context) {
    final licoes_data = licoesModulos(context);
    final todas = [
      ...licoes_data.licao_trilha_1,
      ...licoes_data.licao_trilha_2,
      ...licoes_data.licao_trilha_3,
      ...licoes_data.licao_trilha_4,
      ...licoes_data.licao_trilha_5,
      ...licoes_data.licao_trilha_6,
      ...licoes_data.licao_trilha_7,
      ...licoes_data.licao_trilha_8,
      ...licoes_data.licao_mergulho_1,
      ...licoes_data.licao_mergulho_2,
      ...licoes_data.licao_mergulho_3,
      ...licoes_data.licao_mergulho_4,
      ...licoes_data.licao_mergulho_5,
      ...licoes_data.licao_mergulho_6,
      ...licoes_data.licao_mergulho_7,
      ...licoes_data.licao_mergulho_8,
    ];
    licoesNotifier.value = todas;
  }
}
