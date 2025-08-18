<?php
require_once 'funcao.php';

$id = $_POST['id'] ?? $_GET['id'];
$save = $_POST['save'] ?? $_GET['save'];
$funcao = new Funcao();

$funcao->uploadProgressoSaves($id, $save);
