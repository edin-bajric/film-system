<?php

/**
 * @OA\Info(
 *     title="Silver Screen Society",
 *     version="0.1",
 *     @OA\Contact(
 *         email="edin.bajric4321@gmail.com",
 *         name="Edin Bajrić"
 *     )
 * )
 * @OA\OpenApi(
 *     @OA\Server(url="http://localhost/film-system/rest", description="Development Environment"),
 *     @OA\Server(url="", description="Production Environment")
 * )
 * @OA\SecurityScheme(
 *     securityScheme="ApiKeyAuth",
 *     type="apiKey",
 *     in="header",
 *     name="Authorization"
 * )
 */

?>