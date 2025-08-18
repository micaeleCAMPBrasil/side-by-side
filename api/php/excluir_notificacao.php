<?php

require '../notificacoes.php';

$notificacoes_class = new PushNotificacoes();

$id = $_POST['id'];
if ($notificacoes_class->excluirNotificacao($id)) {
    echo "<script>
        alert('Notificação excluida com sucesso!');
        window.location.href = '../enviar_notificacao.php';
    </script>";
} else {
    echo "<script>
        alert('Falha ao excluida a notificação!');
        window.location.href = '../enviar_notificacao.php';
    </script>";
}
