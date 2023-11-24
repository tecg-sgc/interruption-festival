<?php

require_once('config.php');

// Charger les fichiers dont on va avoir besoin :
require_once('./controllers/BaseController.php');
require_once('./controllers/HomeController.php');

// Normalement, on exploiterait un "router" pour choisir le bon controlleur

$controller = new HomeController();
$controller->handle();