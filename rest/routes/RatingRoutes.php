<?php
Flight::route('POST /rating', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::ratingService()->add($data));
});

Flight::route('GET /rating', function(){
    Flight::json(Flight::ratingService()->get());
});

Flight::route('GET /rating/@id', function($id){
    Flight::json(Flight::ratingService()->get_by_id($id));
});

Flight::route('PUT /rating/@id', function($id){
    $data = Flight::request()->data->getData();
    Flight::ratingService()->update($data, $id);
    Flight::json(array("message" => "Rating updated successfully"));
});

Flight::route('DELETE /rating/@id', function($id){
    Flight::ratingService()->delete($id);
    Flight::json(["message" => "Rating deleted successfully"]);
});
?>