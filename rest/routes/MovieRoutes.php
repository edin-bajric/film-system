<?php
Flight::route('POST /movie', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::movieService()->add($data));
});


/**
 * @OA\Get(
 *     path="/movie",
 *     summary="Get all movies",
 *     tags={"Movies"},
 *     @OA\Response(
 *         response=200,
 *         description="Successful operation",
 *         @OA\JsonContent(
 *             type="array",
 *             @OA\Items(
 *                 @OA\Property(property="id", type="integer"),
 *                 @OA\Property(property="title", type="string"),
 *                 @OA\Property(property="year", type="integer"),
 *                 @OA\Property(property="length", type="string"),
 *                 @OA\Property(property="rating", type="float"),
 *                 @OA\Property(property="description", type="string"),
 *                 @OA\Property(property="writer", type="string") 
 *                 
 *             )
 *         )
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

Flight::route('GET /movie', function(){
    Flight::json(Flight::movieService()->get());
});

Flight::route('GET /movie/@id', function($id){
    Flight::json(Flight::movieService()->get_by_id($id));
});

Flight::route('PUT /movie/@id', function($id){
    $data = Flight::request()->data->getData();
    Flight::movieService()->update($data, $id);
    Flight::json(array("message" => "Movie updated successfully"));
});

Flight::route('DELETE /movie/@id', function($id){
    Flight::movieService()->delete($id);
    Flight::json(["message" => "Movie deleted successfully"]);
});

/**
 * @OA\Get(
 *     path="/full/movie",
 *     summary="Get full movie details",
 *     tags={"Movies"},
 *     @OA\Response(
 *         response=200,
 *         description="Successful operation",
 *         @OA\JsonContent(
 *             type="array",
 *             @OA\Items()
 *         )
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

Flight::route('GET /full/movie', function() {
    Flight::json(Flight::movieService()->get_full_movie());
});

/**
 * @OA\Get(
 *     path="/full/movie/{title}",
 *     summary="Get full movie details by title",
 *     tags={"Movies"},
 *     @OA\Parameter(
 *         name="title",
 *         in="path",
 *         description="The title of the movie",
 *         required=true,
 *         @OA\Schema(type="string", example="The Movie Title")
 *     ),
 *     @OA\Response(
 *         response=200,
 *         description="Successful operation",
 *         @OA\JsonContent(
 *             type="object",
 *             @OA\Property(
 *                 property="title",
 *                 type="string",
 *                 example="The Movie Title"
 *             ),
 *             @OA\Property(
 *                 property="director",
 *                 type="string",
 *                 example="John Doe"
 *             ),
 *             @OA\Property(
 *                 property="release_date",
 *                 type="string",
 *                 example="2022-01-01"
 *             ),
 *         )
 *     ),
 *     @OA\Response(
 *         response=404,
 *         description="Movie not found"
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */

Flight::route('GET /full/movie/@title', function($title) {
    Flight::json(Flight::movieService()->get_movie_by_title($title));
});
?>