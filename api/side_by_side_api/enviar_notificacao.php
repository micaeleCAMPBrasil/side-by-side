<?php
require 'php/funcao.php';
require 'notificacoes.php';
$notificacoes_class = new PushNotificacoes();
$funcoes = new Funcao();
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Painel de Notificações</title>


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff8e1;
            color: #333;
            max-width: 600px;
            margin: auto;
            padding: 20px;
        }

        h1,
        h6 {
            color: #fbc02d;
            padding: 20px;
            font-weight: bold;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        .mesma_linha {
            display: inline;
        }

        input:not([type="checkbox"]),
        textarea {
            width: 100%;
            padding: 8px;
            margin: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button {
            background-color: #fbc02d;
            border: none;
            padding: 10px 20px;
            color: #333;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }

        .text_center_negrito {
            text-align: center;
            font-weight: bold;
        }

        .usuario {
            background: #fff8e1;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 1px;
        }

        .lista-mensagens {
            margin-bottom: 5px;
        }

        .lista-usuarios {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            /* sempre 4 colunas */
            gap: 10px;
            margin-top: 1px;
        }

        .icon {
            cursor: pointer;
            margin-left: 8px;
            font-size: 18px;
        }

        @media (max-width: 800px) {
            .lista-usuarios {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 500px) {
            .lista-usuarios {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

    <h1>Notificações</h1>

    <?php
    $query = $notificacoes_class->queryNotificacoes('not_ativos', [1]);

    if ($query[0] == 0) {

    ?>
        <p class="text_center_negrito">Sem notificações cadastradas</p>
    <?php
    } else {
    }
    ?>

    <h6>Enviar Notificação</h6>
    <form action="sendNotification.php" method="post">
        <label for="token">Token:</label>

        <!-- <select name="token" id="token"> -->
        <?php
        $users = $notificacoes_class->queryToken('tokens_all_users', []);
        $mensagens = $notificacoes_class->queryToken('queryNotificacoes', []);

        if ($users[0] == 0) {
        } else {
        ?>
            <div>
                <label for="selectAll">
                    <strong>Selecionar todos</strong>
                    <input type="checkbox" id="selectAll">
                </label>
            </div>

            <div class="lista-usuarios">
                <?php foreach ($users[1] as $index => $usuario): ?>
                    <?php if (!empty($usuario['token_alert'])): ?>
                        <div class="usuario">
                            <?php
                            $nomeESobrenome = $funcoes->nome_e_sobrenome($usuario['nome']);
                            ?>
                            <label for="user<?= $index ?>"><?= htmlspecialchars($nomeESobrenome) ?>
                                <input type="checkbox" name="tokens[]" value="<?= htmlspecialchars($usuario['token_alert']) ?>" id="user<?= $index ?>">
                            </label>
                        </div>
                    <?php endif; ?>
                <?php endforeach; ?>
            </div>
        <?php } ?>


        <label for="mensagem">Mensagem:</label>
        <?php
        if ($query[0] == 0) {
        } else {
        ?>
            <?php
            foreach ($query[1] as $index => $mensagens_notificacoes): ?>
                <?php
                $uidNotif = $mensagens_notificacoes['uid'];
                ?>
                <div class="lista-mensagens">
                    <div class="usuario">
                        <label class="mesma_linha" for="not<?= $index ?>"><?= htmlspecialchars($uidNotif) ?>
                            <input type="checkbox" name="id" value="<?= htmlspecialchars($mensagens_notificacoes['id']) ?>" id="not<?= $index ?>">
                            <!-- Ícones -->
                        </label>
                        <span class="icon" data-toggle="modal" data-target="#modalVisualizar<?= $index ?>">🔍</span>
                        <span class="icon" data-toggle="modal" data-target="#modalEditar<?= $index ?>">✏️</span>
                        <span class="icon" data-toggle="modal" data-target="#modalExcluir<?= $index ?>">🚫</span>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php } ?>
        <button type="submit">Enviar Notificação</button>
    </form>

    <?php
    if ($query[0] != 0) {
        foreach ($query[1] as $index => $mensagens_notificacoes):
    ?>
            <!-- Modal visualizar -->
            <div class="modal fade" id="modalVisualizar<?= $index ?>" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title"><?= htmlspecialchars($mensagens_notificacoes['titulo']); ?></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <h5><?= htmlspecialchars($mensagens_notificacoes['text']); ?></h5>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal editar COM PRÓPRIO FORM -->
            <form action="php/edit_notificacao.php" method="POST">
                <div class="modal fade" id="modalEditar<?= $index ?>" tabindex="-1" role="dialog">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Edição</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="id" value="<?= $mensagens_notificacoes['id']; ?>">
                                <label>UID:</label>
                                <input type="text" class="form-control" name="uid" value="<?= htmlspecialchars($mensagens_notificacoes['uid']); ?>">

                                <label>Titulo:</label>
                                <input type="text" class="form-control" name="titulo" value="<?= htmlspecialchars($mensagens_notificacoes['titulo']); ?>">

                                <label>Texto:</label>
                                <textarea name="texto" class="form-control"><?= htmlspecialchars($mensagens_notificacoes['text']); ?></textarea>

                                <label>Situação:</label>
                                <select name="ativo" class="form-control">
                                    <option value="0" <?= $mensagens_notificacoes['ativo'] == 0 ? 'selected' : '' ?>>Desativado</option>
                                    <option value="1" <?= $mensagens_notificacoes['ativo'] == 1 ? 'selected' : '' ?>>Ativo</option>
                                </select>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                <button type="submit" class="btn btn-primary">Salvar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <!-- Modal excluir -->
            <form action="php/excluir_notificacao.php" method="POST">
                <div class="modal fade" id="modalExcluir<?= $index ?>" tabindex="-1" role="dialog">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Excluir Notificação</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="id" value="<?= $mensagens_notificacoes['id']; ?>">
                                <h7>Deseja excluir?</h7>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
                                <button type="submit" class="btn btn-primary">Sim</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
    <?php
        endforeach;
    }
    ?>

    <h6>Add Notificação</h6>

    <form action="php/add_notificacao.php" method="POST">
        <label for="uid">UID:</label>
        <input type="text" id="uid" name="uid" placeholder="UID da notificação" required>

        <label for="title">Título:</label>
        <input type="text" id="title" name="title" placeholder="Título da notificação" required>

        <label for="body">Mensagem:</label>
        <textarea id="body" name="body" placeholder="Mensagem da notificação" required></textarea>

        <button type="submit">Salvar Notificação</button>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        // JS para selecionar/deselecionar todos
        document.getElementById('selectAll').addEventListener('change', function() {
            const checkboxes = document.querySelectorAll('input[name="tokens[]"]');
            for (const checkbox of checkboxes) {
                checkbox.checked = this.checked;
            }
        });
    </script>

</body>

</html>
