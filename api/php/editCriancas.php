<?php
require_once 'funcao.php';

$idLider = $_POST['uid'] ?? $_GET['uid'];;
$idPg = $_POST['idpg'] ?? $_GET['idpg'];;
$idCrianca = $_POST['idCrianca'] ?? $_GET['idCrianca'];;
$nome = $_POST['nome'] ?? $_GET['nome'];;
$idade = $_POST['idade'] ?? $_GET['idade'];;

$funcao = new Funcao();

$funcao->editCriancasLider($idLider, $idPg, $idCrianca, $nome, $idade);
