<?php
require '../vendor/autoload.php';
require 'services/MovieService.php';
require 'routes/MovieRoutes.php';

Flight::register('movieService', 'MovieService');

Flight::start();
?>