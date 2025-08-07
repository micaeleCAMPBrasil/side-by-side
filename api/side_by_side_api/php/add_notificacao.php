.<?php
    require '../notificacoes.php';

    $notificacoes_class = new PushNotificacoes();

    $uid = $_POST['uid'];
    $titulo = $_POST['titulo'];
    $texto = $_POST['texto'];

    if ($notificacoes_class->addNotificacao($uid, $titulo, $texto)) {
        echo "<script>
        alert('Notificação adicionada com sucesso!');
        window.location.href = '../enviar_notificacao.php';
    </script>";
    } else {
        echo "<script>
        alert('Falha ao adicionar a notificação!');
        window.location.href = '../enviar_notificacao.php';
    </script>";
    }
