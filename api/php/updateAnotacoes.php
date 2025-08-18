<?php
require_once 'funcao.php';

$id = $_POST['id'];
$title = $_POST['title'];
$texto = $_POST['texto'];
$checking = $_POST['checking'];
$color = $_POST['color'];

$funcao = new Funcao();

$funcao->uploadAnotacoes($id, $title, $texto, $checking, $color);
