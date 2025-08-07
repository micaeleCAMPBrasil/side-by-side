<?php
require_once 'funcao.php';

$idLider = $_POST['idLider'];

$funcao = new Funcao();

$funcao->getAnotacoes($idLider);
