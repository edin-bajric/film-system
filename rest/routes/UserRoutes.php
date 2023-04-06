<?php
Flight::route('POST /user', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::userService()->add($data));
});

Flight::route('GET /user', function(){
    Flight::json(Flight::userService()->get());
});

Flight::route('GET /user/@id', function($id){
    Flight::json(Flight::userService()->get_by_id($id));
});

Flight::route('PUT /user/@id', function($id){
    $data = Flight::request()->data->getData();
    Flight::userService()->update($data, $id);
    Flight::json(array("message" => "User updated successfully"));
});

Flight::route('DELETE /user/@id', function($id){
    Flight::userService()->delete($id);
    Flight::json(["message" => "User deleted successfully"]);
});
?>