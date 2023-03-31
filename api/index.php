<?php
require '../vendor/autoload.php';

require 'services/MovieService.php';

Flight::register('movieService', 'MovieService');

require 'routes/MovieRoutes.php';

Flight::start();
?>