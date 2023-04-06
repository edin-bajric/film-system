<?php
Flight::route('POST /watchlist', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::watchlistService()->add($data));
});

Flight::route('GET /watchlist', function(){
    Flight::json(Flight::watchlistService()->get());
});

Flight::route('GET /watchlist/@id', function($id){
    Flight::json(Flight::watchlistService()->get_by_id($id));
});

Flight::route('PUT /watchlist/@id', function($id){
    $data = Flight::request()->data->getData();
    Flight::watchlistService()->update($data, $id);
    Flight::json(array("message" => "Watchlist updated successfully"));
});

Flight::route('DELETE /watchlist/@id', function($id){
    Flight::watchlistService()->delete($id);
    Flight::json(["message" => "Watchlist deleted successfully"]);
});
?>