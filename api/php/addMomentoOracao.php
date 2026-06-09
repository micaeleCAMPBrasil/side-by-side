<?php
require_once 'funcao.php';

$idModulo = $_POST['id_modulo'];
$texto = $_POST['texto'];

$funcao = new Funcao();

$funcao->addMomentoOracao($idModulo, $texto);
