<?php
require_once 'funcao.php';

$id = $_POST['id'];

$funcao = new Funcao();

$funcao->deleteAnotacoes($id);
