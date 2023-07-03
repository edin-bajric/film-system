<?php
require dirname(__FILE__).'/../vendor/autoload.php';

// services
require dirname(__FILE__).'/services/MovieService.php';
require dirname(__FILE__).'/services/DirectorService.php';
require dirname(__FILE__).'/services/GenreService.php';
require dirname(__FILE__).'/services/UserService.php';
require dirname(__FILE__).'/services/WatchlistService.php';
require dirname(__FILE__).'/services/FavoriteService.php';


// routes
require_once dirname(__FILE__).'/routes/MovieRoutes.php';
require_once dirname(__FILE__).'/routes/DirectorRoutes.php';
require_once dirname(__FILE__).'/routes/GenreRoutes.php';
require_once dirname(__FILE__).'/routes/UserRoutes.php';
require_once dirname(__FILE__).'/routes/WatchlistRoutes.php';
require_once dirname(__FILE__).'/routes/FavoriteRoutes.php';


// register
Flight::register('movieService', 'MovieService');
Flight::register('directorService', 'DirectorService');
Flight::register('genreService', 'GenreService');
Flight::register('userService', 'UserService');
Flight::register('watchlistService', 'WatchlistService');
Flight::register('favoriteService', 'FavoriteService');


Flight::start();
?>