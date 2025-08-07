<?php
require_once 'funcao.php';

$id = $_POST['id'] ?? $_GET['id'];
$token = $_POST['token'] ?? $_GET['token'];

$funcao = new Funcao();

$funcao->update_token($id, $token);
