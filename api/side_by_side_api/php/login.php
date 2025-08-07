<?php
require_once 'funcao.php';

$uid = $_POST['uid'] ?? $_GET['uid'];
$nome = $_POST['nome'] ?? $_GET['nome'];
$email = $_POST['email'] ?? $_GET['email'];
$senha = $_POST['senha'] ?? $_GET['senha'];
$telefone = $_POST['telefone'] ?? $_GET['telefone'];

$pais = $_POST['pais'] ?? $_GET['pais'];
$estado = $_POST['estado'] ?? $_GET['estado'];
$cidade = $_POST['cidade'] ?? $_GET['cidade'];

$token = $_POST['token'] ?? $_GET['token'];

$funcao = new Funcao();

$funcao->login($uid, $nome, $email, $senha, $telefone, $pais, $estado, $cidade, $token);
