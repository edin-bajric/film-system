<?php
Flight::route('POST /movie', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::movieService()->add($data));
});

Flight::route('GET /movie', function(){
    Flight::json(Flight::movieService()->get());
});

Flight::route('GET /movie/@id', function($id){
    Flight::json(Flight::movieService()->get_by_id($id));
});

Flight::route('PUT /movie/@id', function($id){
    $data = Flight::request()->data->getData();
    Flight::movieService()->update($data, $id);
    Flight::json(array("message" => "Movie updated successfully"));
});

Flight::route('DELETE /movie/@id', function($id){
    Flight::movieService()->delete($id);
    Flight::json(["message" => "Movie deleted successfully"]);
});

Flight::route('GET /full/movie', function() {
    Flight::json(Flight::movieService()->get_full_movie());
});

Flight::route('GET /full/movie/@title', function($title) {
    Flight::json(Flight::movieService()->get_movie_by_title($title));
});
?>