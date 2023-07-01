<?php

use Firebase\JWT\JWT;
use Firebase\JWT\Key;

Flight::route('POST /user', function(){
  $data = Flight::request()->data->getData();
  $hashedPassword = password_hash($data['password'], PASSWORD_DEFAULT);
  $user = [
      'username' => $data['username'],
      'password' => $hashedPassword,
      'email' => $data['email'],
      'created_at' => date('Y-m-d H:i:s')
  ];

  Flight::userService()->add($user);

  $payload = [
      'username' => $data['username'],
      'password' => $hashedPassword,
      'created_at' => date('Y-m-d H:i:s')
  ];
  $jwtKey = Config::JWT_SECRET();
  $token = JWT::encode($payload, $jwtKey, 'HS256');

  Flight::json(['token' => $token]);
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