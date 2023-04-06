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
?>