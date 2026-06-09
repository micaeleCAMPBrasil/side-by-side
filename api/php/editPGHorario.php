<?php
require_once 'funcao.php';

$idPg = $_POST['idpg'] ?? $_GET['idpg'];
$horario = $_POST['horario'] ?? $_GET['horario'];

$funcao = new Funcao();

$funcao->editPGHorario($idPg, $horario);
