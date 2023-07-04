<?php

/**
 * @OA\Post(
 *     path="/watchlist",
 *     summary="Add movie to watchlist",
 *     tags={"Watchlist"},
 *     @OA\RequestBody(
 *         required=true,
 *         @OA\JsonContent(
 *             type="object",
 *             @OA\Property(
 *                 property="movie_id",
 *                 type="integer",
 *                 example=123
 *             ),
 *             @OA\Property(
 *                 property="user_id",
 *                 type="integer",
 *                 example=456
 *             )
 *         )
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Watchlist item added successfully"
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

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

/**
 * @OA\Get(
 *     path="/full/watchlist/{user_id}",
 *     summary="Get movies from user's watchlist",
 *     tags={"Watchlist"},
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
 *                 @OA\Property(
 *                     property="movie_id",
 *                     type="integer",
 *                     example=456
 *                 ),
 *                 @OA\Property(
 *                     property="user_id",
 *                     type="integer",
 *                     example=123
 *                 )
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

Flight::route('GET /full/watchlist/@user_id', function($user_id) {
    Flight::json(Flight::watchlistService()->get_movie_from_watchlist($user_id));
});

/**
 * @OA\Delete(
 *     path="/watchlist/{user_id}/{movie_id}",
 *     summary="Delete movie from user's watchlist",
 *     tags={"Watchlist"},
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
 *         description="Watchlist deleted successfully",
 *         @OA\JsonContent(
 *             @OA\Property(
 *                 property="message",
 *                 type="string",
 *                 example="Watchlist deleted successfully"
 *             )
 *         )
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

Flight::route('DELETE /watchlist/@user_id/@movie_id', function($user_id, $movie_id){
    Flight::watchlistService()->delete_movie_from_watchlist($user_id, $movie_id);
    Flight::json(["message" => "Watchlist deleted successfully"]);
});
?>