<?php

use Firebase\JWT\JWT;
use Firebase\JWT\Key;


Flight::route('POST /user', function(){
  $data = Flight::request()->data->getData();

  // Validate the form data (add your validation logic here)
  if (empty($data['username']) || empty($data['email']) || empty($data['password'])) {
      Flight::halt(400, 'Please fill in all fields');
  }

  // Hash the password
  $hashedPassword = password_hash($data['password'], PASSWORD_DEFAULT);

  // Create a new user object
  $user = [
      'username' => $data['username'],
      'password' => $hashedPassword,
      'email' => $data['email'],
      'created_at' => date('Y-m-d H:i:s')
  ];

  // Save the user in the database using the UserService
  Flight::userService()->add($user);


  // Generate a JWT for the user
  $payload = [
      'username' => $data['username'],
      'password' => $hashedPassword,
      'created_at' => date('Y-m-d H:i:s')
  ];
  $jwtKey = "secret"; // Replace with your own secret key
  $token = JWT::encode($payload, $jwtKey, 'HS256');

  // Return the token as a response
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