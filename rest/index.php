<?php
require dirname(__FILE__).'/../vendor/autoload.php';

use Firebase\JWT\JWT;
use Firebase\JWT\Key;

Flight::route('/*', function(){
    
  //perform JWT decode
$path = Flight::request()->url;
  if ($path != '/watchlist' && $path != '/favorite' && !str_starts_with($path, '/movie/favorite/')) return TRUE;
  
 
  // || // exclude routes from middleware
  // str_starts_with($path, '/summonersMobileAPI/') || str_starts_with($path, '/summoners/')
  $headers = getallheaders();
  
  if (@!$headers['Authorization']){
      Flight::json(["message" => "Authorization is missing"], 403);
      return FALSE;
  }else{
      try {
          $decoded = (array)JWT::decode($headers['Authorization'], new Key(Config::JWT_SECRET(), 'HS256'));
          Flight::set('user', $decoded);
          return TRUE;
      } catch (\Exception $e) {
          Flight::json(["message" => "Authorization token is not valid"], 403);
          return FALSE;
      }
  }
});

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

Flight::route('GET /docs.json', function(){
    $openapi = \OpenApi\scan('routes');
    header('Content-Type: application/json');
    echo $openapi->toJson();
  });


  
Flight::start();
?>