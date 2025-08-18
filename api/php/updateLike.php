<?php
require_once 'funcao.php';

$id = $_POST['id'] ?? $_GET['id'];
$like = $_POST['like'] ?? $_GET['like'];
$funcao = new Funcao();

$funcao->uploadProgressoLike($id, $like);
