<?php

require_once 'funcao.php';

$uid = $_POST['uid'] ?? $_GET['uid'];

$funcao = new Funcao();

$funcao->getUIDUser($uid);
