<!-- NOTIFICAÇÃO DE BOA VINDA -->
<!-- NOTIFICAÇÃO DE DEVOCIONAIS -->
<!-- NOTIFICAÇÃO DE LIÇÃO -->
<!-- NOTIFICAÇÕES PARA ORAR PELA FAMILIA -->
<?php

class PushNotificacoes
{

    public function queryNotificacoes($x, $dados)
    {
        require 'conexao.php';

        $dados_array = array();

        if ($x == 'not_ativos') {
            $ativo = $dados[0];
            $consulta_notificacoes_sql = "SELECT * FROM notificacao WHERE ativo = '$ativo'";
            $resultado_notificacoes = mysqli_query($db, $consulta_notificacoes_sql);
            $cont_notificacoes = mysqli_num_rows($resultado_notificacoes);

            $dados_array[] = $cont_notificacoes;
            $dados_array[] = $resultado_notificacoes;
        } else if ($x == 'not_id') {
            $id = $dados[0];
            $consulta_notificacoes_sql = "SELECT * FROM notificacao WHERE id = $id";
            $resultado_notificacoes = mysqli_query($db, $consulta_notificacoes_sql);
            $cont_notificacoes = mysqli_num_rows($resultado_notificacoes);
            $info_notificacoes = mysqli_fetch_assoc($resultado_notificacoes);

            $dados_array[] = $cont_notificacoes;
            $dados_array[] = $info_notificacoes;
        }

        return $dados_array;
    }

    public function queryToken($x, $dados)
    {
        require 'conexao.php';

        $dados_array = array();

        if ($x == 'tokens_all_users') {
            $consulta_users_sql = "SELECT * FROM usuario";
            $resultado_users = mysqli_query($db, $consulta_users_sql);
            $cont_users = mysqli_num_rows($resultado_users);

            $dados_array[] = $cont_users;
            $dados_array[] = $resultado_users;
        } else if ($x == 'info_usuario') {
            $token = $dados[0];
            $consulta_users_sql = "SELECT * FROM usuario WHERE token_alert = '$token'";
            $resultado_users = mysqli_query($db, $consulta_users_sql);
            $cont_users = mysqli_num_rows($resultado_users);
            $info_usuario = mysqli_fetch_assoc($resultado_users);

            $dados_array[] = $cont_users;
            $dados_array[] = $info_usuario;
        }

        return $dados_array;
    }
    public function addNotificacao($uid, $titulo, $texto)
    {
        require 'conexao.php';

        $data = date('Y-m-d');

        $inserir_notificacao_sql = "INSERT INTO notificacao VALUES (null,'$uid', '$titulo','$texto',1,$data)";
        $inserir_notificacao = mysqli_query($db, $inserir_notificacao_sql);

        if ($inserir_notificacao) {
            return true;
        } else {
            return false;
        }
    }

    public function editNotificacao($id, $uid, $titulo, $texto, $ativo)
    {

        require 'conexao.php';
        $update_notificacao_sql = "UPDATE notificacao SET uid = '$uid', titulo = '$titulo', text = '$texto', ativo = $ativo WHERE id = '$id'";
        $update_notificacao = mysqli_query($db, $update_notificacao_sql);

        if ($update_notificacao) {
            return true;
        } else {
            return false;
        }
    }
    public function excluirNotificacao($id)
    {
        require_once '../conexao.php';

        $delete_notificacos_sql = "DELETE FROM notificacao WHERE id = '$id'";
        $delete_notificacos = mysqli_query($db, $delete_notificacos_sql);

        $atualizar_autoincrement = "ALTER TABLE notificacao AUTO_INCREMENT = 1";
        if ($delete_notificacos) {
            mysqli_query($db, $atualizar_autoincrement);
            return true;
        } else {
            return false;
        }
    }
}
?>
