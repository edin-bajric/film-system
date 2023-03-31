<?php
Flight::route('POST /genre', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::genreService()->add($data));
});

Flight::route('GET /genre', function(){
    Flight::json(Flight::genreService()->get());
});

Flight::route('GET /genre/@id', function($id){
    Flight::json(Flight::genreService()->get_by_id($id));
});

Flight::route('PUT /genre/@id', function($id){
    $data = Flight::request()->data->getData();
    Flight::genreService()->update($data, $id);
    Flight::json(array("message" => "Genre updated successfully"));
});

Flight::route('DELETE /genre/@id', function($id){
    Flight::genreService()->delete($id);
    Flight::json(["message" => "Genre deleted successfully"]);
});
?>