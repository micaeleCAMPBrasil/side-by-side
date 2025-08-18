<?php
require_once 'funcao.php';

$idLider = $_POST['idLider'];
$title = $_POST['title'];
$texto = $_POST['texto'];
$cor = $_POST['color'];

$funcao = new Funcao();

$funcao->addAnotacoes($idLider, $title, $texto, $cor);
