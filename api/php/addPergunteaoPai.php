<?php
require_once 'funcao.php';

$idModulo = $_POST['id_modulo'];
$nLicao = $_POST['n_licao'];
$texto = $_POST['texto'];

$funcao = new Funcao();

$funcao->addPergunteaoPai($idModulo, $nLicao, $texto);
