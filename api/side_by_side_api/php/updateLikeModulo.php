<?php
require_once 'funcao.php';

$uid = $_POST['uid'] ?? $_GET['uid'];
$idModulo = $_POST['idModulo'] ?? $_GET['idModulo'];
$like = $_POST['like'] ?? $_GET['like'];

$funcao = new Funcao();

$funcao->uploadLikeModulo($uid, $idModulo, $like);
