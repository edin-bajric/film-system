<?php
require dirname(__FILE__).'/../vendor/autoload.php';

require dirname(__FILE__).'/services/MovieService.php';
require dirname(__FILE__).'/services/DirectorService.php';

require_once dirname(__FILE__).'/routes/MovieRoutes.php';
require_once dirname(__FILE__).'/routes/DirectorRoutes.php';

Flight::register('movieService', 'MovieService');
Flight::register('directorService', 'DirectorService');

Flight::start();
?>