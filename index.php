<?php

require_once('config.php');

// Charger les fichiers dont on va avoir besoin :
require_once('./models/BaseModel.php');
require_once('./models/Edition.php');
require_once('./models/Artist.php');
require_once('./models/Ticket.php');
require_once('./models/Day.php');
require_once('./models/Schedule.php');
require_once('./controllers/BaseController.php');
require_once('./controllers/HomeController.php');

// Normalement, on exploiterait un "router" pour choisir le bon controlleur

$controller = new HomeController();
$controller->handle();