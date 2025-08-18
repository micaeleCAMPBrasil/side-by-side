<?php

date_default_timezone_set('America/Sao_Paulo');

class Funcao
{

    public function nome_e_sobrenome($nome)
    {
        $partes = explode(' ', $nome);
        if (count($partes) >= 2) {
            $nomeESobrenome = $partes[0] . ' ' . $partes[count($partes) - 1];
        } else {
            $nomeESobrenome = $nome;
        }

        return $nomeESobrenome;
    }
    public function cadastro($uid, $nome, $pais, $estado, $cidade, $telefone, $email, $senha, $token)
    {
        require_once '../conexao.php';

        $data = date('d/m/Y');

        // CONSULTAR NA TABELA
        $consulta = "SELECT * FROM usuario WHERE nome = '$nome' OR email = '$email' OR telefone = '$telefone'";
        $resultado = mysqli_query($db, $consulta);
        $cont = mysqli_num_rows($resultado);

        if ($cont == 0) {
            $inserir_usuario_sql = "INSERT INTO usuario VALUES('$uid', '$token' , '$nome', '$email', '$senha', '$telefone', '$pais', '$estado', '$cidade', 1, '$data', '')";
            $inserir_usuario = mysqli_query($db, $inserir_usuario_sql);

            if ($inserir_usuario) {
                $consulta2 = "SELECT * FROM usuario WHERE nome = '$nome' AND email = '$email' AND senha = '$senha'";
                $resultado2 = mysqli_query($db, $consulta2);

                $dados = array();

                while ($fetchData = $resultado2->fetch_assoc()) {
                    $dados[] = $fetchData;
                }
                echo json_encode($dados);
            } else {
                echo json_encode("erro_no_cadastro");
            }
        } else {
            echo json_encode("ja_cadastrado");
        }
    }

    public function login($uid, $nome, $email, $senha, $telefone, $pais, $estado, $cidade, $token)
    {
        require_once '../conexao.php';

        $sql = "SELECT * FROM usuario WHERE uid = '$uid'";
        $query = mysqli_query($db, $sql);
        $cont = mysqli_num_rows($query);

        $data = date('d/m/Y');

        $dados_array = array();

        if ($cont == 0) {
            if ($nome == '' && $telefone == '') {
                echo json_encode('vc_precisa_se_cadastrar');
            } else {
                $cadastro_usuario_sql = "INSERT INTO usuario VALUES('$uid', '$token' , '$nome', '$email', '$senha', '$telefone', '$pais', '$estado', '$cidade', 1, '$data', '')";
                $cadastro_usuario = mysqli_query($db, $cadastro_usuario_sql);

                if ($cadastro_usuario) {
                    $sql_2 = "SELECT * FROM usuario WHERE uid = '$uid'";
                    $query_2 = mysqli_query($db, $sql_2);
                    /*while ($fetchData = $query_2->fetch_assoc()) {
                        $dados_array[] = $fetchData;
                    }*/

                    $fetchData = $query_2->fetch_assoc();
                    $dados_array[] = $fetchData;
                    $id_lider = $fetchData['uid'];

                    $consulta_pg = "SELECT * FROM pg WHERE id_lider = '$id_lider'";
                    $resultado_pg = mysqli_query($db, $consulta_pg);
                    $cont_pg = mysqli_num_rows($resultado_pg);

                    if ($cont_pg == 0) {

                        $inserir_pg_sql = "INSERT INTO pg VALUES (null,'$id_lider',1,1,1,'$data')";
                        $inserir_pg = mysqli_query($db, $inserir_pg_sql);

                        if ($inserir_pg) {
                            $consulta_pg_2 = "SELECT * FROM pg WHERE id_lider = '$id_lider'";
                            $resultado_pg_2 = mysqli_query($db, $consulta_pg_2);
                            $info_pg = $resultado_pg_2->fetch_assoc();
                            # code...
                            $id_pg = $info_pg['id'];

                            $consulta_progresso_sql = "SELECT * FROM check_licao WHERE id_lider = '$id_lider' AND id_pg = '$id_pg'";
                            $resultado_progresso = mysqli_query($db, $consulta_progresso_sql);
                            $cont_progresso = mysqli_num_rows($resultado_progresso);

                            if ($cont_progresso == 0) {
                                $inserir_progresso_sql = "INSERT INTO check_licao VALUES (null,'$id_lider',$id_pg,1,1,0,0,0,'$data')";
                                $inserir_progresso = mysqli_query($db, $inserir_progresso_sql);

                                if ($inserir_progresso) {

                                    $consulta_devocional_sql = "SELECT * FROM check_devocional WHERE id_lider = '$id_lider' AND id_pg = '$id_pg'";
                                    $resultado_devocional = mysqli_query($db, $consulta_devocional_sql);
                                    $cont_devocional = mysqli_num_rows($resultado_devocional);

                                    if ($cont_devocional == 0) {
                                        $inserir_devocional_sql = "INSERT INTO check_devocional VALUES (null,'$id_lider','$id_pg',1,1,1,0,'$data')";
                                        $inserir_devocional = mysqli_query($db, $inserir_devocional_sql);
                                        if ($inserir_devocional) {
                                        }
                                    }
                                } else {
                                }
                            }
                        }
                    } else {
                        $info_pg = $resultado_pg->fetch_assoc();
                        # code...
                        $id_pg = $info_pg['id'];

                        $consulta_progresso_sql = "SELECT * FROM check_licao WHERE id_lider = '$id_lider' AND id_pg = '$id_pg'";
                        $resultado_progresso = mysqli_query($db, $consulta_progresso_sql);
                        $cont_progresso = mysqli_num_rows($resultado_progresso);

                        if ($cont_progresso == 0) {
                            $inserir_progresso_sql = "INSERT INTO check_licao VALUES (null,'$id_lider',$id_pg,1,1,0,0,0,'$data')";
                            $inserir_progresso = mysqli_query($db, $inserir_progresso_sql);

                            if ($inserir_progresso) {

                                $consulta_devocional_sql = "SELECT * FROM check_devocional WHERE id_lider = '$id_lider' AND id_pg = '$id_pg'";
                                $resultado_devocional = mysqli_query($db, $consulta_devocional_sql);
                                $cont_devocional = mysqli_num_rows($resultado_devocional);

                                if ($cont_devocional == 0) {
                                    $inserir_devocional_sql = "INSERT INTO check_devocional VALUES (null,'$id_lider','$id_pg',1,1,1,0,'$data')";
                                    $inserir_devocional = mysqli_query($db, $inserir_devocional_sql);
                                    if ($inserir_devocional) {
                                    }
                                }
                            } else {
                            }
                        }
                    }
                } else {
                }
            }
        } else {
            $fetchData = $query->fetch_assoc();
            $dados_array[] = $fetchData;
            $id_lider = $fetchData['uid'];

            $consulta_pg = "SELECT * FROM pg WHERE id_lider = '$id_lider'";
            $resultado_pg = mysqli_query($db, $consulta_pg);
            $cont_pg = mysqli_num_rows($resultado_pg);

            if ($cont_pg == 0) {

                $inserir_pg_sql = "INSERT INTO pg VALUES (null,'$id_lider',1,1,1,'$data')";
                $inserir_pg = mysqli_query($db, $inserir_pg_sql);

                if ($inserir_pg) {
                    $consulta_pg_2 = "SELECT * FROM pg WHERE id_lider = '$id_lider'";
                    $resultado_pg_2 = mysqli_query($db, $consulta_pg_2);
                    $info_pg = $resultado_pg_2->fetch_assoc();
                    # code...
                    $id_pg = $info_pg['id'];

                    $consulta_progresso_sql = "SELECT * FROM check_licao WHERE id_lider = '$id_lider' AND id_pg = '$id_pg'";
                    $resultado_progresso = mysqli_query($db, $consulta_progresso_sql);
                    $cont_progresso = mysqli_num_rows($resultado_progresso);

                    if ($cont_progresso == 0) {
                        $inserir_progresso_sql = "INSERT INTO check_licao VALUES (null,'$id_lider',$id_pg,1,1,0,0,0,'$data')";
                        $inserir_progresso = mysqli_query($db, $inserir_progresso_sql);

                        if ($inserir_progresso) {

                            $consulta_devocional_sql = "SELECT * FROM check_devocional WHERE id_lider = '$id_lider' AND id_pg = '$id_pg'";
                            $resultado_devocional = mysqli_query($db, $consulta_devocional_sql);
                            $cont_devocional = mysqli_num_rows($resultado_devocional);

                            if ($cont_devocional == 0) {
                                $inserir_devocional_sql = "INSERT INTO check_devocional VALUES (null,'$id_lider','$id_pg',1,1,1,0,'$data')";
                                $inserir_devocional = mysqli_query($db, $inserir_devocional_sql);
                                if ($inserir_devocional) {
                                }
                            }
                        } else {
                        }
                    }
                }
            } else {
                $info_pg = $resultado_pg->fetch_assoc();
                # code...
                $id_pg = $info_pg['id'];

                $consulta_progresso_sql = "SELECT * FROM check_licao WHERE id_lider = '$id_lider' AND id_pg = '$id_pg'";
                $resultado_progresso = mysqli_query($db, $consulta_progresso_sql);
                $cont_progresso = mysqli_num_rows($resultado_progresso);

                if ($cont_progresso == 0) {
                    $inserir_progresso_sql = "INSERT INTO check_licao VALUES (null,'$id_lider',$id_pg,1,1,0,0,0,'$data')";
                    $inserir_progresso = mysqli_query($db, $inserir_progresso_sql);

                    if ($inserir_progresso) {

                        $consulta_devocional_sql = "SELECT * FROM check_devocional WHERE id_lider = '$id_lider' AND id_pg = '$id_pg'";
                        $resultado_devocional = mysqli_query($db, $consulta_devocional_sql);
                        $cont_devocional = mysqli_num_rows($resultado_devocional);

                        if ($cont_devocional == 0) {
                            $inserir_devocional_sql = "INSERT INTO check_devocional VALUES (null,'$id_lider','$id_pg',1,1,1,0,'$data')";
                            $inserir_devocional = mysqli_query($db, $inserir_devocional_sql);
                            if ($inserir_devocional) {
                            }
                        }
                    } else {
                    }
                }
            }
        }
        //}
        echo json_encode($dados_array);
    }

    public function update_token($id, $token)
    {
        require_once '../conexao.php';

        $data_hj = date('d/m/Y');

        if ($token == '') {
            echo json_encode("dados_vazios");
        } else {
            $update_usuario_sql = "UPDATE usuario SET token_alert = '$token' WHERE uid = '$id'";
            $update_usuario = mysqli_query($db, $update_usuario_sql);

            if ($update_usuario) {
                echo json_encode("sucesso");
            } else {
                echo json_encode("erro_na_edicao");
            }
        }
    }

    public function getUIDUser($uid)
    {
        require_once '../conexao.php';

        $sql = "SELECT * FROM usuario WHERE uid = '$uid'";
        $query = mysqli_query($db, $sql);
        $cont = mysqli_num_rows($query);

        $dados_array = array();

        if ($cont == 0) {
            echo json_encode('erro');
        } else {
            while ($fetchData = $query->fetch_assoc()) {
                $dados_array[] = $fetchData;
            }
        }
        echo json_encode($dados_array);
    }

    public function getPG($idLider)
    {
        require_once '../conexao.php';

        if ($idLider == '') {
            echo json_encode("dados_vazios");
        } else {
            // CONSULTAR NA TABELA
            $consulta = "SELECT * FROM pg WHERE id_lider = '$idLider'";
            $resultado = mysqli_query($db, $consulta);
            $cont = mysqli_num_rows($resultado);

            if ($cont == 0) {
                echo json_encode("erro");
            } else {

                $dados = array();

                while ($fetchData = $resultado->fetch_assoc()) {
                    $dados[] = $fetchData;
                }
                echo json_encode($dados);
            }
        }
    }
    public function addPG($idLider)
    {
        require_once '../conexao.php';

        $data = date('d/m/Y');
        if ($idLider == '') {
            echo json_encode("dados_vazios");
        } else {

            // CONSULTAR NA TABELA
            $consulta = "SELECT * FROM pg WHERE id_lider = '$idLider'";
            $resultado = mysqli_query($db, $consulta);
            $cont = mysqli_num_rows($resultado);

            if ($cont == 0) {

                $inserir_pg_sql = "INSERT INTO pg VALUES (null,'$idLider',1,1,1,'$data')";
                $inserir_pg = mysqli_query($db, $inserir_pg_sql);

                if ($inserir_pg) {

                    /*$consulta2 = "SELECT * FROM pg WHERE id_lider = '$idLider'";
                    $resultado2 = mysqli_query($db, $consulta2);

                    $dados = array();

                    while ($fetchData = $resultado2->fetch_assoc()) {
                        $dados[] = $fetchData;
                    }
                    echo json_encode($dados);*/
                    echo json_encode("sucesso");
                } else {
                    echo json_encode("erro_no_cadastro");
                }
            } else {
                echo json_encode("ja_cadastrado");
            }
        }
    }
    public function getLicaoAll()
    {
        require_once '../conexao.php';

        // CONSULTAR NA TABELA
        $consulta_1 = "SELECT * FROM licao";
        $resultado_1 = mysqli_query($db, $consulta_1);
        $cont_1 = mysqli_num_rows($resultado_1);

        if ($cont_1 == 0) {
            echo json_encode("erro");
        } else {

            $dados_1 = array();

            while ($fetchData_1 = $resultado_1->fetch_assoc()) {
                $dados_1[] = $fetchData_1;
            }
            echo json_encode($dados_1);
        }
    }

    public function addProgresso($idLider, $idPg)
    {
        require_once '../conexao.php';

        $data = date('d/m/Y');
        if ($idLider == '' || $idPg == '') {
            echo json_encode("dados_vazios");
        } else {
            // CONSULTAR NA TABELA
            $consulta_lider_sql = "SELECT * FROM lider WHERE id_lider = '$idLider'";
            $resultado_lider = mysqli_query($db, $consulta_lider_sql);
            $cont_lider = mysqli_num_rows($resultado_lider);

            $consulta_pg_sql = "SELECT * FROM pg WHERE id_lider = '$idLider'";
            $resultado_pg = mysqli_query($db, $consulta_pg_sql);
            $cont_pg = mysqli_num_rows($resultado_pg);

            if ($cont_lider == 0 || $cont_pg == 0) {

                $consulta_progresso_sql = "SELECT * FROM check_licao WHERE id_lider = '$idLider' AND id_pg = '$idPg'";
                $resultado_progresso = mysqli_query($db, $consulta_progresso_sql);
                $cont_progresso = mysqli_num_rows($resultado_progresso);

                if ($cont_progresso == 0) {
                    $inserir_progresso_sql = "INSERT INTO check_licao VALUES (null,'$idLider',$idPg,1,1,0,0,0,'$data')";
                    $inserir_progresso = mysqli_query($db, $inserir_progresso_sql);

                    if ($inserir_progresso) {

                        echo json_encode("sucesso");
                        /*$consulta_devocional_sql = "SELECT * FROM check_devocional WHERE id_lider = '$idLider' AND id_pg = '$idPg'";
                        $resultado_devocional = mysqli_query($db, $consulta_devocional_sql);
                        $cont_devocional = mysqli_num_rows($resultado_devocional);

                        if ($cont_devocional == 0) {
                            $inserir_devocional_sql = "INSERT INTO check_devocional VALUES (null,'$idLider','$idPg',1,1,1,0,'$data')";
                            $inserir_devocional = mysqli_query($db, $inserir_devocional_sql);
                            if ($inserir_devocional) {
                            }
                        }*/
                    } else {
                        echo json_encode("erro_no_cadastro_do_progresso");
                    }
                }
            } else {
                echo json_encode("dados_n_encontrado");
            }
        }
    }
    public function getProgressoLicaoAll($idLider, $idPG)
    {
        require_once '../conexao.php';

        if ($idLider == '' || $idPG == 0 || $idPG == '') {
            echo json_encode("dados_vazios");
        } else {
            // CONSULTAR NA TABELA
            $consulta_1 = "SELECT * FROM check_licao WHERE id_lider = '$idLider' AND id_pg = '$idPG'";
            $resultado_1 = mysqli_query($db, $consulta_1);
            $cont_1 = mysqli_num_rows($resultado_1);

            if ($cont_1 == 0) {
                echo json_encode("erro");
            } else {

                $dados_1 = array();

                while ($fetchData_1 = $resultado_1->fetch_assoc()) {
                    $dados_1[] = $fetchData_1;
                }
                echo json_encode($dados_1);
            }
        }
    }

    public function addcheckdevocional($idLider, $idPg, $idModulo, $idLicao, $dia, $checkLicao)
    {
        require_once '../conexao.php';

        $data = date('d/m/Y');

        if ($idLider == 0 || $idLider == '' || $idPg == 0 || $idPg == '' || $idModulo == 0 || $idModulo == '' || $idLicao == 0 || $idLicao == '') {
            echo json_encode("dados_vazios");
        } else {
            $consulta_devocional_sql = "SELECT * FROM check_devocional WHERE id_lider = '$idLider' AND id_pg = '$idPg' AND id_modulo = '$idModulo' AND n_licao = '$idLicao' AND dia = '$dia'";
            $resultado_devocional = mysqli_query($db, $consulta_devocional_sql);
            $cont_devocional = mysqli_num_rows($resultado_devocional);

            if ($cont_devocional == 0) {
                $inserir_devocional_sql = "INSERT INTO check_devocional VALUES (null,'$idLider','$idPg',$idModulo,$idLicao,$dia,$checkLicao,'$data')";
                $inserir_devocional = mysqli_query($db, $inserir_devocional_sql);
                if ($inserir_devocional) {
                    echo json_encode("sucesso");
                } else {
                    echo json_encode("erro_cadastro");
                }
            } else {

                $atualizar_progresso_sql = "UPDATE check_devocional SET check_devocional = '$checkLicao' WHERE id_lider = '$idLider' AND id_pg = '$idPg' AND id_modulo = '$idModulo' AND n_licao = '$idLicao'";
                $atualizar_progresso = mysqli_query($db, $atualizar_progresso_sql);

                if ($atualizar_progresso) {
                    echo json_encode("sucesso");
                } else {
                    echo json_encode("erro_na_edicao");
                }
            }

            if ($checkLicao == '1') {
                // inserir uma nova linha
                $novo_dia = $dia + 1;

                if ($novo_dia < 6) {
                    $inserir_novo_devocional_sql = "INSERT INTO check_devocional VALUES (null,'$idLider','$idPg',$idModulo,$idLicao,$novo_dia,0,'$data')";
                    $inserir_novo_devocional = mysqli_query($db, $inserir_novo_devocional_sql);
                    if ($inserir_novo_devocional) {
                        $nova_licao = $idLicao + 1;

                        if ($info_pg['n_licao'] == $idLicao) {
                            $atualizar_pg_sql = "UPDATE pg SET n_licao = '$nova_licao' WHERE id = '$idPg'";
                            mysqli_query($db, $atualizar_pg_sql);
                        }

                        echo json_encode("sucesso_adicionado_novo_dia");
                    } else {
                        echo json_encode("erro_cadastro_adicionado_novo_dia");
                    }
                } else {

                    $inserir_novo_devocional_sql = "INSERT INTO check_devocional VALUES (null,'$idLider','$idPg',$idModulo,$idLicao,$novo_dia,0,'$data')";
                    $inserir_novo_devocional = mysqli_query($db, $inserir_novo_devocional_sql);
                    if ($inserir_novo_devocional) {
                        echo json_encode("sucesso_adicionado_novo_dia");
                    } else {
                        echo json_encode("erro_cadastro_adicionado_novo_dia");
                    }

                    $nova_licao = $idLicao + 1;

                    $id_novo_modulo = '';
                    $id_nova_licao = '';

                    // limites para mudar o módulo
                    if ($idModulo == 1 || $idModulo == 2) {
                        $limite = 8;
                    } else if ($idModulo == 3 || $idModulo == 4) {
                        $limite = 10;
                    } else {
                    }

                    if ($nova_licao > $limite) {
                        $id_novo_modulo = $idModulo + 1;
                        $id_nova_licao = '1';
                    } else {
                        $id_novo_modulo = $idModulo;
                        $id_nova_licao = $nova_licao;
                    }

                    $inserir_progresso_novo_sql = "INSERT INTO check_licao VALUES (null,'$idLider','$idPg','$id_novo_modulo','$id_nova_licao',0,0,0,'$data')";
                    $inserir_novo_progresso = mysqli_query($db, $inserir_progresso_novo_sql);
                    if ($inserir_novo_progresso) {
                        echo json_encode("sucesso_adicionado_novo_devocional");
                        $inserir_novo_devocional_sql = "INSERT INTO check_devocional VALUES (null,'$idLider','$idPg',$id_novo_modulo,$id_nova_licao,1,0,'$data')";
                        $inserir_novo_devocional = mysqli_query($db, $inserir_novo_devocional_sql);
                        if ($inserir_novo_devocional) {

                            if ($info_pg['n_licao'] == $idLicao) {
                                $atualizar_pg_sql = "UPDATE pg SET n_licao = '$id_nova_licao' WHERE id = '$idPg'";
                                mysqli_query($db, $atualizar_pg_sql);
                            }

                            echo json_encode("sucesso_adicionado_novo_dia");
                        } else {
                            echo json_encode("erro_cadastro_adicionado_novo_dia");
                        }
                    } else {
                        echo json_encode("erro_cadastro_adicionado_novo_devocional");
                    }
                }
            }
        }
    }

    public function getProgressoLicao($idLider, $idPG, $idModulo, $nLicao)
    {
        require_once '../conexao.php';

        $data_hj = date('d/m/Y');

        if ($idLider == '' || $idPG == '' || $idModulo == '' || $nLicao == '') {
            echo json_encode("dados_vazios");
        } else {
            // CONSULTAR NA TABELA
            $consulta_1 = "SELECT * FROM check_licao WHERE id_lider = '$idLider' AND id_pg = '$idPG' AND id_modulo = '$idModulo' AND n_licao = '$nLicao'";
            $resultado_1 = mysqli_query($db, $consulta_1);
            $cont_1 = mysqli_num_rows($resultado_1);

            if ($cont_1 == 0) {
                $inserir_progresso_novo_sql = "INSERT INTO check_licao VALUES (null,'$idLider','$idPG','$idModulo','$nLicao',0,0,0,'$data_hj')";
                mysqli_query($db, $inserir_progresso_novo_sql);
            } else {

                $dados_1 = array();

                while ($fetchData_1 = $resultado_1->fetch_assoc()) {
                    $dados_1[] = $fetchData_1;
                }
                echo json_encode($dados_1);
            }
        }
    }

    public function getProgressoDevocional($idLider, $idPG, $idModulo, $nLicao)
    {
        require_once '../conexao.php';

        if ($idLider == '' || $idPG == '' || $idModulo == '' || $nLicao == '') {
            echo json_encode("dados_vazios");
        } else {
            // CONSULTAR NA TABELA
            $consulta_1 = "SELECT * FROM check_devocional WHERE id_lider = '$idLider' AND id_pg = '$idPG' AND id_modulo = '$idModulo' AND n_licao = '$nLicao'";
            $resultado_1 = mysqli_query($db, $consulta_1);
            $cont_1 = mysqli_num_rows($resultado_1);

            if ($cont_1 == 0) {
                echo json_encode("erro");
            } else {

                $dados_1 = array();

                while ($fetchData_1 = $resultado_1->fetch_assoc()) {
                    $dados_1[] = $fetchData_1;
                }
                echo json_encode($dados_1);
            }
        }
    }

    public function addProgressoLicao($idLider, $idPg, $idModulo, $idLicao, $checkLicao)
    {
        require_once '../conexao.php';

        $data = date('d/m/Y');
        if ($idLider == 0 || $idLider == '' || $idPg == 0 || $idPg == '' || $idModulo == 0 || $idModulo == '' || $idLicao == 0 || $idLicao == '') {
            echo json_encode("dados_vazios");
        } else {

            // CONSULTAR NA TABELA
            $consulta = "SELECT * FROM check_licao WHERE id_lider = '$idLider' AND id_pg = '$idPg' AND id_modulo = '$idModulo' AND n_licao = '$idLicao'";
            $resultado = mysqli_query($db, $consulta);
            $cont = mysqli_num_rows($resultado);

            if ($cont == 0) {

                $inserir_progresso_sql = "INSERT INTO check_licao VALUES (null,'$idLider','$idPg','$idModulo','$idLicao','$checkLicao',0,0,'$data')";
                $inserir_progresso = mysqli_query($db, $inserir_progresso_sql);

                if ($inserir_progresso) {

                    $consulta2 = "SELECT * FROM check_licao WHERE id_lider = '$idLider' AND id_pg = '$idPg' AND id_modulo = '$idModulo' AND n_licao = '$idLicao'";
                    $resultado2 = mysqli_query($db, $consulta2);

                    $dados = array();

                    while ($fetchData = $resultado2->fetch_assoc()) {
                        $dados[] = $fetchData;
                    }
                    echo json_encode($dados);
                } else {
                    echo json_encode("erro_no_cadastro");
                }
            } else {

                $atualizar_progresso_sql = "UPDATE check_licao SET check = '$checkLicao' WHERE id_lider = '$idLider' AND id_pg = '$idPg' AND id_modulo = '$idModulo' AND n_licao = '$idLicao'";
                $atualizar_progresso = mysqli_query($db, $atualizar_progresso_sql);

                if ($atualizar_progresso) {

                    $consulta2 = "SELECT * FROM check_licao WHERE id_lider = '$idLider' AND id_pg = '$idPg' AND id_modulo = '$idModulo' AND n_licao = '$idLicao'";
                    $resultado2 = mysqli_query($db, $consulta2);

                    $dados = array();

                    while ($fetchData = $resultado2->fetch_assoc()) {
                        $dados[] = $fetchData;
                    }
                    echo json_encode($dados);
                } else {
                    echo json_encode("erro_na_atualizacao");
                }
            }
        }
    }
    public function uploadProgresso($id, $idLider, $idPg, $idModulo, $idLicao)
    {
        require_once '../conexao.php';

        $nova_licao = $idLicao + 1;

        $id_novo_modulo = '';
        $id_nova_licao = '';

        $consulta_pg = "SELECT * FROM pg WHERE id = '$idPg'";
        $resultado_pg = mysqli_query($db, $consulta_pg);
        $cont_pg = mysqli_num_rows($resultado_pg);
        $info_pg = $resultado_pg->fetch_assoc();

        // limites para mudar o módulo
        if ($idModulo == 1 || $idModulo == 2) {
            $limite = 8;
        } else if ($idModulo == 3 || $idModulo == 4) {
            $limite = 10;
        } else {
        }

        if ($nova_licao > $limite) {
            $id_novo_modulo = $idModulo + 1;
            $id_nova_licao = '1';
        } else {
            $id_novo_modulo = $idModulo;
            $id_nova_licao = $nova_licao;
        }

        $data_hj = date('d/m/Y');

        if ($id == '') {
            echo json_encode("dados_vazios");
        } else {

            $update_progresso_sql = "UPDATE check_licao SET checks = 1, data = '$data_hj' WHERE id = '$id'";
            $update_progresso = mysqli_query($db, $update_progresso_sql);

            if ($update_progresso) {


                $consulta_progresso_novo = "SELECT * FROM check_licao WHERE id_pg = '$idPg' AND id_lider = '$idLider' AND id_modulo = $id_novo_modulo AND n_licao = '$id_nova_licao'";
                $resultado_progresso = mysqli_query($db, $consulta_progresso_novo);
                $cont_progresso = mysqli_num_rows($resultado_progresso);

                if ($cont_progresso == 0) {
                    $inserir_progresso_novo_sql = "INSERT INTO check_licao VALUES (null,'$idLider','$idPg','$id_novo_modulo','$id_nova_licao',0,0,0,'$data')";
                    mysqli_query($db, $inserir_progresso_novo_sql);
                }

                if ($info_pg['n_licao'] == $idLicao) {
                    $atualizar_pg_sql = "UPDATE pg SET id_modulo = $id_novo_modulo, n_licao = '$id_nova_licao' WHERE id = '$idPg'";
                    mysqli_query($db, $atualizar_pg_sql);
                }
                echo json_encode("sucesso");
            } else {
                echo json_encode("erro_na_edicao");
            }
        }
    }

    public function uploadProgressoLike($id, $like)
    {
        require_once '../conexao.php';

        if ($id == '') {
            echo json_encode("dados_vazios");
        } else {

            $update_progresso_sql = "UPDATE check_licao SET likes = $like WHERE id = '$id'";
            $update_progresso = mysqli_query($db, $update_progresso_sql);

            if ($update_progresso) {
                echo json_encode("sucesso");
            } else {
                echo json_encode("erro_na_edicao");
            }
        }
    }
    public function uploadProgressoSaves($id, $save)
    {
        require_once '../conexao.php';

        if ($id == '') {
            echo json_encode("dados_vazios");
        } else {

            $update_progresso_sql = "UPDATE check_licao SET saves = $save WHERE id = '$id'";
            $update_progresso = mysqli_query($db, $update_progresso_sql);

            if ($update_progresso) {
                echo json_encode("sucesso");
            } else {
                echo json_encode("erro_na_edicao");
            }
        }
    }

    public function uploadLikeModulo($uid, $idModulo, $like)
    {
        require_once '../conexao.php';

        if ($uid == '' || $idModulo == '') {
            echo json_encode("dados_vazios");
        } else {

            $consulta = "SELECT * FROM fav_saves_modulos WHERE uid = '$uid' AND idModulo = '$idModulo'";
            $resultado = mysqli_query($db, $consulta);
            $cont = mysqli_num_rows($resultado);

            if ($cont == 0) {
                $inserir_like_modulo_sql = "INSERT INTO fav_saves_modulos VALUES (null,'$uid','$idModulo','$like',0)";
                $inserir_like_modulo = mysqli_query($db, $inserir_like_modulo_sql);
                if ($inserir_like_modulo) {
                    echo json_encode("sucesso");
                } else {
                    echo json_encode("erro");
                }
            } else {
                $update_like_modulo_sql = "UPDATE fav_saves_modulos SET is_fav = $like WHERE uid = '$uid' AND idModulo = '$idModulo'";
                $update_like_modulo = mysqli_query($db, $update_like_modulo_sql);

                if ($update_like_modulo) {
                    echo json_encode("sucesso");
                } else {
                    echo json_encode("erro_na_edicao");
                }
            }
        }
    }

    public function uploadSavedModulo($uid, $idModulo, $saves)
    {
        require_once '../conexao.php';

        if ($uid == '' || $idModulo == '') {
            echo json_encode("dados_vazios");
        } else {

            $consulta = "SELECT * FROM fav_saves_modulos WHERE uid = '$uid' AND idModulo = '$idModulo'";
            $resultado = mysqli_query($db, $consulta);
            $cont = mysqli_num_rows($resultado);

            if ($cont == 0) {
                $inserir_saves_modulo_sql = "INSERT INTO fav_saves_modulos VALUES (null,'$uid','$idModulo',0,'$saves')";
                $inserir_saves_modulo = mysqli_query($db, $inserir_saves_modulo_sql);
                if ($inserir_saves_modulo) {
                    echo json_encode("sucesso");
                } else {
                    echo json_encode("erro");
                }
            } else {
                $update_saves_modulo_sql = "UPDATE fav_saves_modulos SET is_save = $saves WHERE uid = '$uid' AND idModulo = '$idModulo'";
                $update_saves_modulo = mysqli_query($db, $update_saves_modulo_sql);

                if ($update_saves_modulo) {
                    echo json_encode("sucesso");
                } else {
                    echo json_encode("erro_na_edicao");
                }
            }
        }
    }


    public function getQtdDevocional($idLider, $idPG, $idModulo, $nLicao)
    {
        require_once '../conexao.php';

        if ($idLider == 0 || $idLider == '' || $idPG == 0 || $idPG == '' || $idModulo == 0 || $idModulo == '' || $nLicao == 0 || $nLicao == '') {
            echo json_encode("dados_vazios");
        } else {
            // CONSULTAR NA TABELA
            $consulta_1 = "SELECT * FROM check_devocional WHERE id_lider = '$idLider' AND id_pg = '$idPG' AND id_modulo = '$idModulo' AND n_licao = '$nLicao' AND check_devocional = 1";
            $resultado_1 = mysqli_query($db, $consulta_1);
            $cont_1 = mysqli_num_rows($resultado_1);
            echo json_encode($cont_1);
        }
    }

    public function getCriancasLider($idLider, $idPG)
    {
        require_once '../conexao.php';
        if ($idLider == '' || $idPG == '') {
            echo json_encode("dados_vazios");
        } else {
            // CONSULTAR NA TABELA
            $consulta = "SELECT * FROM criancas WHERE id_lider = '$idLider' AND id_pg = '$idPG'";
            $resultado = mysqli_query($db, $consulta);
            $dados = array();

            while ($fetchData = $resultado->fetch_assoc()) {
                $dados[] = $fetchData;
            }
            echo json_encode($dados);
        }
    }

    public function addCriancasLider($idLider, $idPG, $nome, $idade)
    {
        require_once '../conexao.php';
        $data_hj = date('d/m/Y');
        if ($idLider == '' || $idPG == '' || $nome == '' || $idade == '') {
            echo json_encode("dados_vazios");
        } else {
            // CONSULTAR NA TABELA
            $consulta = "SELECT * FROM criancas WHERE id_lider = '$idLider' AND id_pg = '$idPG' AND nome = '$nome' AND data_nascimento = '$idade'";
            $resultado = mysqli_query($db, $consulta);
            $cont = mysqli_num_rows($resultado);

            if ($cont == 0) {
                // add
                $inserir_criancas_sql = "INSERT INTO criancas VALUES (null,'$nome','$idade','$idLider','$idPG','$data_hj')";
                $inserir_criancas = mysqli_query($db, $inserir_criancas_sql);
                if ($inserir_criancas) {
                    echo json_encode("sucesso");
                } else {
                    echo json_encode("erro");
                }
            } else {
                // ja cadastrado
                echo json_encode("ja_cadastrado");
            }
        }
    }

    public function editCriancasLider($idLider, $idPG, $idCriaca, $nome, $idade)
    {
        require_once '../conexao.php';

        if ($idLider == '' || $idPG == '' || $nome == '' || $idade == '' || $idCriaca == '') {
            echo json_encode("dados_vazios");
        } else {

            $consulta = "SELECT * FROM criancas WHERE id = '$idCriaca'";
            $resultado = mysqli_query($db, $consulta);
            $cont = mysqli_num_rows($resultado);

            if ($cont == 0) {
                echo json_encode("crianca_n_encontrada");
            } else {
                $update_anotacao_sql = "UPDATE criancas SET nome = '$nome', data_nascimento = '$idade' WHERE id = '$idCriaca'";
                $update_anotacao = mysqli_query($db, $update_anotacao_sql);

                if ($update_anotacao) {
                    echo json_encode("sucesso");
                } else {
                    echo json_encode("erro_na_edicao");
                }
            }
        }
    }
    public function deleteCriancasLider($id)
    {
        require_once '../conexao.php';

        if ($id == 0 || $id == '') {
            echo json_encode("dados_vazios");
        } else {

            $delete_criancas_sql = "DELETE FROM criancas WHERE id = '$id'";
            $delete_criancas = mysqli_query($db, $delete_criancas_sql);

            $atualizar_autoincrement = "ALTER TABLE criancas AUTO_INCREMENT = 1";
            if ($delete_criancas) {
                mysqli_query($db, $atualizar_autoincrement);
                echo json_encode("sucesso");
            } else {
                echo json_encode("erro_na_exclusao");
            }
        }
    }

    public function getStatusModulos($idLider)
    {
        require_once '../conexao.php';

        if ($idLider == '') {
            echo json_encode("dados_vazios");
        } else {
            // CONSULTAR NA TABELA
            $consulta = "SELECT * FROM fav_saves_modulos WHERE uid = '$idLider'";
            $resultado = mysqli_query($db, $consulta);
            $cont = mysqli_num_rows($resultado);

            if ($cont == 0) {
                echo json_encode("erro");
            } else {
                $dados = array();
                while ($fetchData = $resultado->fetch_assoc()) {
                    $dados[] = $fetchData;
                }
                echo json_encode($dados);
            }
        }
    }

    public function getAnotacoes($idLider)
    {
        require_once '../conexao.php';

        if ($idLider == 0 || $idLider == '') {
            echo json_encode("dados_vazios");
        } else {
            // CONSULTAR NA TABELA
            $consulta = "SELECT * FROM anotacoes WHERE id_lider = '$idLider'";
            $resultado = mysqli_query($db, $consulta);
            $cont = mysqli_num_rows($resultado);

            if ($cont == 0) {
                echo json_encode("erro");
            } else {

                $dados = array();

                while ($fetchData = $resultado->fetch_assoc()) {
                    $dados[] = $fetchData;
                }
                echo json_encode($dados);
            }
        }
    }
    public function addAnotacoes($idLider, $title, $texto, $cor)
    {
        require_once '../conexao.php';

        $data = date('d/m/Y');

        if ($idLider == 0 || $idLider == '' || $title == '' || $texto == '' || $cor == '') {
            echo json_encode("dados_vazios");
        } else {

            $inserir_anotacao_sql = "INSERT INTO anotacoes VALUES (null,'$idLider','$title','$texto','$cor','1','$data')";
            $inserir_anotacao = mysqli_query($db, $inserir_anotacao_sql);

            if ($inserir_anotacao) {

                $consulta2 = "SELECT * FROM anotacoes WHERE id_lider = '$idLider' AND title = '$title' AND texto = '$texto'";
                $resultado2 = mysqli_query($db, $consulta2);

                $dados = array();

                while ($fetchData = $resultado2->fetch_assoc()) {
                    $dados[] = $fetchData;
                }
                echo json_encode($dados);
            } else {
                echo json_encode("erro_no_cadastro");
            }
        }
    }
    public function uploadAnotacoes($id, $title, $texto, $checking, $cor)
    {
        require_once '../conexao.php';

        $data = date('d/m/Y');
        if ($id == 0 || $id == '' || $title == '' || $texto == '' || $checking == 0 || $checking == '' || $cor == '') {
            echo json_encode("dados_vazios");
        } else {

            $update_anotacao_sql = "UPDATE anotacoes SET title = '$title', texto = '$texto', checking = '$checking', cor = '$cor', data = '$data' WHERE id = '$id'";
            $update_anotacao = mysqli_query($db, $update_anotacao_sql);

            if ($update_anotacao) {
                echo json_encode("sucesso");
            } else {
                echo json_encode("erro_na_edicao");
            }
        }
    }
    public function deleteAnotacoes($id)
    {
        require_once '../conexao.php';

        if ($id == 0 || $id == '') {
            echo json_encode("dados_vazios");
        } else {

            $delete_anotacao_sql = "DELETE FROM anotacoes WHERE id = '$id'";
            $delete_anotacao = mysqli_query($db, $delete_anotacao_sql);

            $atualizar_autoincrement = "ALTER TABLE anotacoes AUTO_INCREMENT = 1";
            if ($delete_anotacao) {
                mysqli_query($db, $atualizar_autoincrement);
                echo json_encode("sucesso");
            } else {
                echo json_encode("erro_na_exclusao");
            }
        }
    }
}
