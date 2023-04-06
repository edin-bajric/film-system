<?php
require dirname(__FILE__).'/../vendor/autoload.php';

require dirname(__FILE__).'/services/MovieService.php';
require dirname(__FILE__).'/services/DirectorService.php';
require dirname(__FILE__).'/services/GenreService.php';
require dirname(__FILE__).'/services/UserService.php';

require_once dirname(__FILE__).'/routes/MovieRoutes.php';
require_once dirname(__FILE__).'/routes/DirectorRoutes.php';
require_once dirname(__FILE__).'/routes/GenreRoutes.php';
require_once dirname(__FILE__).'/routes/UserRoutes.php';

Flight::register('movieService', 'MovieService');
Flight::register('directorService', 'DirectorService');
Flight::register('genreService', 'GenreService');
Flight::register('userService', 'UserService');

Flight::start();
?>