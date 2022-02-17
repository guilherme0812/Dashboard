<?php
#Caminhos absoluyos
$dirInt = "mjmiranda/mydashboard/";
$projectName = "";
define('DIRPAGE',"http://{$_SERVER['HTTP_HOST']}/{$dirInt}");
$bar = ( substr($_SERVER['DOCUMENT_ROOT'], -1) == '/')? "" : "/";
define('DIRREQ',"{$_SERVER['DOCUMENT_ROOT']}{$bar}{$dirInt}");

# Definindo váriaveis do Banco de Dados
define('HOST', "localhost");
define('DB', "sistema_dev");
define('USER', "root");
define('PASS', "");

# Incluir arquivos
include(DIRREQ . 'src/assets/composer/vendor/autoload.php');
