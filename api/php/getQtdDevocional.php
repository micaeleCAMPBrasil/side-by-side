<?php
require_once 'funcao.php';

$idLider = $_POST['idLider'] ?? $_GET['idLider'];
$idPg = $_POST['idPg'] ?? $_GET['idPg'];
$idModulo = $_POST['idModulo'] ?? $_GET['idModulo'];
$nLicao = $_POST['nLicao'] ?? $_GET['nLicao'];

$x == $_GET['x'] ?? '1';

$funcao = new Funcao();

if ($x == '1') {
    $funcao->getQtdDevocional($idLider, $idPg, $idModulo, $nLicao);
} else {
    $funcao->getProgressoDevocional($idLider, $idPg, $idModulo, $nLicao);
}
