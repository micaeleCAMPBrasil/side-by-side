<?php
require_once 'funcao.php';

$uid = $_POST['uid'] ?? $_GET['uid'];
$idModulo = $_POST['idModulo'] ?? $_GET['idModulo'];
$saved = $_POST['saved'] ?? $_GET['saved'];

$funcao = new Funcao();

$funcao->uploadSavedModulo($uid, $idModulo, $saved);
