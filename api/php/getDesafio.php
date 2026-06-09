<?php
require_once 'funcao.php';

$idModulo = $_POST['id_modulo'] ?? $_GET['id_modulo'];
$nLicao = $_POST['n_licao'] ?? $_GET['n_licao'];

$funcao = new Funcao();

$funcao->getDesafio($idModulo, $nLicao);
