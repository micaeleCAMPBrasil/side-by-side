<?php
require '../notificacoes.php';

$notificacoes_class = new PushNotificacoes();

$id = $_POST['id'];
$uid = $_POST['uid'];
$titulo = $_POST['titulo'];
$texto = $_POST['texto'];
$ativo = $_POST['ativo'];

if ($notificacoes_class->editNotificacao($id, $uid, $titulo, $texto, $ativo)) {
    echo "<script>
        alert('Notificação editada com sucesso!');
        window.location.href = '../enviar_notificacao.php';
    </script>";
} else {
    echo "<script>
        alert('Falha ao editar a notificação!');
        window.location.href = '../enviar_notificacao.php';
    </script>";
}
