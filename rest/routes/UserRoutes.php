<?php

use Firebase\JWT\JWT;
use Firebase\JWT\Key;

/**
 * @OA\Post(
 *     path="/user",
 *     summary="Register a new user",
 *     tags={"User"},
 *     @OA\RequestBody(
 *         required=true,
 *         description="User details"
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Registration successful",
 *         @OA\JsonContent(
 *             type="object",
 *             @OA\Property(property="message", type="string")
 *         )
 *     )
 * )
 */
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
  
    Flight::json(['message' => 'Registration successful']);
  });
  
  /**
 * @OA\Post(
 *     path="/login",
 *     summary="User login",
 *     tags={"User"},
 *     @OA\RequestBody(
 *         required=true,
 *         description="User credentials"
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Login successful",
 *         @OA\JsonContent(
 *             type="object",
 *             @OA\Property(property="token", type="string")
 *         )
 *     ),
 *     @OA\Response(
 *         response=401,
 *         description="Invalid username or password"
 *     )
 * )
 */
  Flight::route('POST /login', function () {
    $data = Flight::request()->data->getData();
    $user = Flight::userService()->get_user_by_username($data['username']);

    if (!$user || !password_verify($data['password'], $user['password'])) {
        Flight::halt(401, 'Invalid username or password');
    }

    $payload = [
        'id' => $user['id'],
        'username' => $user['username'],
        'created_at' => date('Y-m-d H:i:s')
    ];

    $token = JWT::encode($payload, Config::JWT_SECRET(), 'HS256'); 

    Flight::json(['token' => $token]);
});

/**
 * @OA\Get(
 *     path="/user",
 *     summary="Get all users",
 *     tags={"User"},
 *     @OA\Response(
 *         response=200,
 *         description="Successful operation",
 *         @OA\JsonContent(
 *             type="array",
 *             @OA\Items(
 *                 type="object",
 *                 @OA\Property(
 *                     property="id",
 *                     type="integer",
 *                     example=1
 *                 ),
 *                 @OA\Property(
 *                     property="name",
 *                     type="string",
 *                     example="John Doe"
 *                 ),
 *             )
 *         )
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

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