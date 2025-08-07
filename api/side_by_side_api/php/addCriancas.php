<?php
require_once 'funcao.php';

$idLider = $_POST['uid'] ?? $_GET['uid'];;
$idPg = $_POST['idpg'] ?? $_GET['idpg'];;
$nome = $_POST['nome'] ?? $_GET['nome'];;
$idade = $_POST['idade'] ?? $_GET['idade'];;

$funcao = new Funcao();

$funcao->addCriancasLider($idLider, $idPg, $nome, $idade);
