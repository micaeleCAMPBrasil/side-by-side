<?php
require_once 'funcao.php';

$idModulo = $_POST['id_modulo'];
$n_licao = $_POST['n_licao'];
$titulo = $_POST['titulo'];
$desafio = $_POST['desafio'];

$funcao = new Funcao();

$funcao->addDesafioLicao($idModulo, $n_licao, $titulo, $desafio);
