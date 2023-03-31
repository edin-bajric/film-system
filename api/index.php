<?php
require '../vendor/autoload.php';
require 'services/MovieService.php';
require_once 'routes/MovieRoutes.php';

Flight::register('movieService', 'MovieService');

Flight::start();
?>