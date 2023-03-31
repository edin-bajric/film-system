<?php
require dirname(__FILE__).'/../vendor/autoload.php';
require dirname(__FILE__).'/services/MovieService.php';
require_once dirname(__FILE__).'/routes/MovieRoutes.php';

Flight::register('movieService', 'MovieService');

Flight::start();
?>