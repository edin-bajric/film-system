<?php
require '../vendor/autoload.php';
require 'dao/MovieDao.class.php';

Flight::register('movieDao', 'MovieDao');

Flight::route('GET /hello', function() {
    echo "Hello, world!";
});

Flight::route('GET /movie', function(){
    Flight::json(Flight::movieDao()->get());
});


Flight::route('POST /movie', function(){
    $data = Flight::request()->data->getData();
    Flight::json(Flight::movieDao()->add($data));
});

Flight::route('PUT /movie/@id', function($id){
    $data = Flight::request()->data;
    Flight::movieDao()->update($id, $data['attribute'], $data['value']);
});

Flight::route('DELETE /movie/@id', function($id){
    Flight::movieDao()->delete($id);
});


Flight::start();


?>