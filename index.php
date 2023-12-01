<?php

require_once('config.php');

// Charger toutes les dépendances de code
require_once('models/BaseModel.php');
require_once('models/Artist.php');
require_once('controllers/BaseController.php');
require_once('controllers/HomeController.php');

$controller = new HomeController();
$controller->handle();