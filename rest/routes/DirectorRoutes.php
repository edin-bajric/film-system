<?php
Flight::route('POST /director', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::directorService()->add($data));
});

/**
 * @OA\Get(
 *     path="/director",
 *     summary="Get all directors",
 *     tags={"Directors"},
 *     @OA\Response(
 *         response=200,
 *         description="Successful operation",
 *         @OA\JsonContent(
 *             type="array",
 *             @OA\Items(
 *                 @OA\Property(property="id", type="integer"),
 *                 @OA\Property(property="name", type="string")
 *             )
 *         )
 *     ),
 *     security={
 *         {"bearerAuth": {}}
 *     }
 * )
 */
Flight::route('GET /director', function(){
    Flight::json(Flight::directorService()->get());
});

Flight::route('GET /director/@id', function($id){
    Flight::json(Flight::directorService()->get_by_id($id));
});

Flight::route('PUT /director/@id', function($id){
    $data = Flight::request()->data->getData();
    Flight::directorService()->update($data, $id);
    Flight::json(array("message" => "Director updated successfully"));
});

Flight::route('DELETE /director/@id', function($id){
    Flight::directorService()->delete($id);
    Flight::json(["message" => "Director deleted successfully"]);
});
?>