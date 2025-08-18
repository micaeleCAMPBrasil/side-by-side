<?php
require_once 'funcao.php';

$id = $_POST['id'] ?? $_GET['id'];
$idLider = $_POST['idLider'] ?? $_GET['idLider'];
$idPg = $_POST['idPg'] ?? $_GET['idPg'];
$idModulo = $_POST['idModulo'] ?? $_GET['idModulo'];
$nLicao = $_POST['nLicao'] ?? $_GET['nLicao'];

$funcao = new Funcao();

$funcao->uploadProgresso($id, $idLider, $idPg, $idModulo, $nLicao);
