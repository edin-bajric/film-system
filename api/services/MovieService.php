<?php

require_once 'BaseService.php';
require_once __DIR__.'/../dao/MovieDao.class.php';

class MovieService extends BaseService{

    public function __construct(){
        parent::__construct(new MovieDao());
    }
}
?>