<?php
require_once 'funcao.php';

$uid = $_POST['uid'];
$nome = $_POST['nome'];
$telefone = $_POST['telefone'];
$email = $_POST['email'];
$senha = $_POST['senha'];

$pais = $_POST['pais'];
$estado = $_POST['estado'];
$cidade = $_POST['cidade'];

$token = $_POST['token'];

$funcao = new Funcao();

$funcao->cadastro($uid, $nome, $pais, $estado, $cidade, $telefone, $email, $senha, $token);
