<?php
require_once 'funcao.php';
$funcao = new Funcao();
$uid = $_POST['uid'] ?? $_GET['uid'];
$funcao->getStatusModulos($uid);
