<?php

require_once('config.php');

// Charger toutes les dépendances de code
require_once('models/BaseModel.php');
require_once('models/Edition.php');
require_once('models/Artist.php');
require_once('models/Ticket.php');
require_once('models/Day.php');
require_once('models/Schedule.php');
require_once('models/Message.php');
require_once('controllers/BaseController.php');
require_once('controllers/HomeController.php');
require_once('controllers/ContactController.php');

$controller = ($_SERVER['REQUEST_METHOD'] === 'POST')
    ? new ContactController()
    : new HomeController();

$controller->handle();