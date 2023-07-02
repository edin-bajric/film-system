<?php
Flight::route('POST /favorite', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::favoriteService()->add($data));
});

Flight::route('GET /favorite', function(){
    Flight::json(Flight::favoriteService()->get());
});

Flight::route('GET /favorite/@id', function($id){
    Flight::json(Flight::favoriteService()->get_by_id($id));
});

Flight::route('PUT /favorite/@id', function($id){
    $data = Flight::request()->data->getData();
    Flight::favoriteService()->update($data, $id);
    Flight::json(array("message" => "Favorite updated successfully"));
});

Flight::route('DELETE /favorite/@id', function($id){
    Flight::favoriteService()->delete($id);
    Flight::json(["message" => "Favorite deleted successfully"]);
});

Flight::route('GET /full/movie/favorite/@user_id', function($user_id) {
    Flight::json(Flight::favoriteService()->get_movie_from_favorites($user_id));
});

Flight::route('GET /full/director/favorite/@user_id', function($user_id) {
    Flight::json(Flight::favoriteService()->get_director_from_favorites($user_id));
});

Flight::route('DELETE /movie/favorite/@user_id/@movie_id', function($user_id, $movie_id){
    Flight::favoriteService()->delete_movie_from_favorites($user_id, $movie_id);
    Flight::json(["message" => "Favorite deleted successfully"]);
});

Flight::route('DELETE /director/favorite/@user_id/@director_id', function($user_id, $director_id){
    Flight::favoriteService()->delete_director_from_favorites($user_id, $director_id);
    Flight::json(["message" => "Favorite deleted successfully"]);
});
?>