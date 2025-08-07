<?php
require_once 'funcao.php';

$id = $_POST['id'] ?? $_GET['id'];

$funcao = new Funcao();

$funcao->getPG($id);
