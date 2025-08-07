<?php
require_once 'funcao.php';

$x = $_POST['x'] ?? $_GET['x'];

$id = $_POST['uid'] ?? $_GET['uid'];
$idPG = $_POST['idPG'] ?? $_GET['idPG'];
$idModulo = $_POST['idModulo'] ?? $_GET['idModulo'];
$idLicao = $_POST['idLicao'] ?? $_GET['idLicao'];
$dia = $_POST['dia'] ?? $_GET['dia'];
$check = $_POST['check'] ?? $_GET['check'];

$funcao = new Funcao();

if ($x == '') {
    $funcao->addProgressoLicao($id, $idPG, $idModulo, $idLicao, $check);
} else if ($x == 'progresso_licao') {
    $funcao->addcheckdevocional($id, $idPG, $idModulo, $idLicao, $dia, $check);
} else if ($x == 'inicial') {
    $funcao->addProgresso($id, $idPG);
}
