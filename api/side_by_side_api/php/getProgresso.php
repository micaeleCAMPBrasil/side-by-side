<?php
require_once 'funcao.php';

$idLider = $_POST['idLider'] ?? $_GET['idLider'];
$idPg = $_POST['idPg'] ?? $_GET['idPg'];
$idModulo = $_POST['idModulo'] ?? $_GET['idModulo'];
$nLicao = $_POST['nLicao'] ?? $_GET['nLicao'];

$x = $_POST['x'] ?? $_GET['x'];

$funcao = new Funcao();

if ($x == '' || $x == '1') {
    $funcao->getProgressoLicaoAll($idLider, $idPg);
} else if ($x == '2') {
    $funcao->getProgressoLicao($idLider, $idPg, $idModulo, $nLicao);
}
