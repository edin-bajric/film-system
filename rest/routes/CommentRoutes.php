<?php
Flight::route('POST /comment', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::commentService()->add($data));
});

Flight::route('GET /comment', function(){
    Flight::json(Flight::commentService()->get());
});

Flight::route('GET /comment/@id', function($id){
    Flight::json(Flight::commentService()->get_by_id($id));
});

Flight::route('PUT /comment/@id', function($id){
    $data = Flight::request()->data->getData();
    Flight::commentService()->update($data, $id);
    Flight::json(array("message" => "Comment updated successfully"));
});

Flight::route('DELETE /comment/@id', function($id){
    Flight::commentService()->delete($id);
    Flight::json(["message" => "Comment deleted successfully"]);
});
?>