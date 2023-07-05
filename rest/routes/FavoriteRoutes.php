<?php

/**
 * @OA\Post(
 *     path="/favorite",
 *     summary="Add a favorite",
 *     tags={"Favorites"},
 *     @OA\RequestBody(
 *         @OA\MediaType(
 *             mediaType="application/json",
 *             @OA\Schema(
 *                 required={"movie_id", "user_id"},
 *                 @OA\Property(property="movie_id", type="integer", example="123", description="The ID of the movie"),
 *                 @OA\Property(property="user_id", type="integer", example="456", description="The ID of the user"),
 *             )
 *         )
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Successful operation"
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

Flight::route('POST /favorite', function(){
    $data = Flight::request()->data->getData();
    //var_dump(Flight::get('user')["id"]); die;
    //var_dump($data["movie_id"]); die;
    $data["user_id"] = Flight::get('user')["id"];
    Flight::json(Flight::favoriteService()->add($data));
});

// Flight::route('GET /favorite', function(){
//     Flight::json(Flight::favoriteService()->get());
// });

// Flight::route('GET /favorite/@id', function($id){
//     Flight::json(Flight::favoriteService()->get_by_id($id));
// });

// Flight::route('PUT /favorite/@id', function($id){
//     $data = Flight::request()->data->getData();
//     Flight::favoriteService()->update($data, $id);
//     Flight::json(array("message" => "Favorite updated successfully"));
// });

// Flight::route('DELETE /favorite/@id', function($id){
//     Flight::favoriteService()->delete($id);
//     Flight::json(["message" => "Favorite deleted successfully"]);
// });

/**
 * @OA\Get(
 *     path="/full/movie/favorite/{user_id}",
 *     summary="Get movies from user's favorites",
 *     tags={"Favorites"},
 *     @OA\Parameter(
 *         name="user_id",
 *         in="path",
 *         description="The ID of the user",
 *         required=true,
 *         @OA\Schema(type="integer", format="int64", example=123)
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Successful operation",
 *         @OA\JsonContent(
 *             type="array",
 *             @OA\Items(
 *                 type="object",
 *                 @OA\Property(property="id", type="integer", example=1),
 *                 @OA\Property(property="title", type="string", example="Movie Title"),
 *                 @OA\Property(property="genre", type="string", example="Action"),
 *                 @OA\Property(property="director", type="string", example="Director Name"),
 *             )
 *         )
 *     ),
 *     @OA\Response(
 *         response=404,
 *         description="User not found"
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

Flight::route('GET /full/movie/favorite/@user_id', function($user_id) {
    Flight::json(Flight::favoriteService()->get_movie_from_favorites($user_id));
});

/**
 * @OA\Get(
 *     path="/full/director/favorite/{user_id}",
 *     summary="Get directors from user's favorites",
 *     tags={"Favorites"},
 *     @OA\Parameter(
 *         name="user_id",
 *         in="path",
 *         description="The ID of the user",
 *         required=true,
 *         @OA\Schema(type="integer", format="int64", example=123)
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Successful operation",
 *         @OA\JsonContent(
 *             type="array",
 *             @OA\Items(
 *                 type="object",
 *                 @OA\Property(property="id", type="integer", example=1),
 *                 @OA\Property(property="name", type="string", example="Director Name"),
 *                 @OA\Property(property="birth_date", type="string", format="date", example="1990-01-01"),
 *             )
 *         )
 *     ),
 *     @OA\Response(
 *         response=404,
 *         description="User not found"
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

Flight::route('GET /full/director/favorite/@user_id', function($user_id) {
    Flight::json(Flight::favoriteService()->get_director_from_favorites($user_id));
});

/**
 * @OA\Delete(
 *     path="/movie/favorite/{user_id}/{movie_id}",
 *     summary="Delete movie from user's favorites",
 *     tags={"Favorites"},
 *     @OA\Parameter(
 *         name="user_id",
 *         in="path",
 *         description="The ID of the user",
 *         required=true,
 *         @OA\Schema(type="integer", format="int64", example=123)
 *     ),
 *     @OA\Parameter(
 *         name="movie_id",
 *         in="path",
 *         description="The ID of the movie",
 *         required=true,
 *         @OA\Schema(type="integer", format="int64", example=456)
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Favorite deleted successfully",
 *         @OA\JsonContent(
 *             type="object",
 *             @OA\Property(property="message", type="string", example="Favorite deleted successfully")
 *         )
 *     ),
 *     @OA\Response(
 *         response=404,
 *         description="User or movie not found"
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

Flight::route('DELETE /movie/favorite/@user_id/@movie_id', function($user_id, $movie_id){
    $decoded = Flight::get('user')["id"];
    if ($user_id != $decoded) {
        Flight::json(["message" => "Action not possible"], 400);
        die;
    }
    Flight::favoriteService()->delete_movie_from_favorites($user_id, $movie_id);
    Flight::json(["message" => "Favorite deleted successfully"]);
});

/**
 * @OA\Delete(
 *     path="/director/favorite/{user_id}/{director_id}",
 *     summary="Delete director from user's favorites",
 *     tags={"Favorites"},
 *     @OA\Parameter(
 *         name="user_id",
 *         in="path",
 *         description="The ID of the user",
 *         required=true,
 *         @OA\Schema(type="integer", format="int64", example=123)
 *     ),
 *     @OA\Parameter(
 *         name="director_id",
 *         in="path",
 *         description="The ID of the director",
 *         required=true,
 *         @OA\Schema(type="integer", format="int64", example=789)
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Favorite deleted successfully",
 *         @OA\JsonContent(
 *             type="object",
 *             @OA\Property(property="message", type="string", example="Favorite deleted successfully")
 *         )
 *     ),
 *     @OA\Response(
 *         response=404,
 *         description="User or director not found"
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

Flight::route('DELETE /director/favorite/@user_id/@director_id', function($user_id, $director_id){
    $decoded = Flight::get('user')["id"];
    if ($user_id != $decoded) {
        Flight::json(["message" => "Action not possible"], 400);
        die;
    }
    Flight::favoriteService()->delete_director_from_favorites($user_id, $director_id);
    Flight::json(["message" => "Favorite deleted successfully"]);
});
?>