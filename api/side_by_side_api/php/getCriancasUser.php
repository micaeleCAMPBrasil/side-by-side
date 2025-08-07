<?php
require_once 'funcao.php';

$idLider = $_POST['uid'] ?? $_GET['uid'];
$idPg = $_POST['idPg'] ?? $_GET['idPg'];

$funcao = new Funcao();
$funcao->getCriancasLider($idLider, $idPg);
