<?php
Flight::route('GET /hello', function() {
    echo "Hello, world!";
});

Flight::route('GET /movie', function(){
    Flight::json(Flight::movieService()->get());
});

Flight::route('GET /movie/@id', function($id){
    Flight::json(Flight::movieService()->get_by_id($id));
});

Flight::route('POST /movie', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::movieService()->add($data));
});

Flight::route('PUT /movie/@id', function($id){
    $data = Flight::request()->data->getData();
    Flight::movieService()->update($data, $id);
    Flight::json(array('message' => 'Movie updated successfully'));
});

Flight::route('DELETE /movie/@id', function($id){
    Flight::movieService()->delete($id);
    Flight::json(['message' => "Movie deleted successfully"]);
});
?>