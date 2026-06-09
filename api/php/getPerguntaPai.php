<?php
require_once 'funcao.php';

$idLider = $_POST['uid'] ?? $_GET['uid'];

$funcao = new Funcao();

$funcao->getPerguntaPai($idLider);
