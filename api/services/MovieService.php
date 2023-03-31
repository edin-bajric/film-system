<?php

require_once 'BaseService.php';
require_once dirname(__FILE__).'/../dao/MovieDao.class.php';

class MovieService extends BaseService{

    public function __construct(){
        parent::__construct(new MovieDao());
    }
}
?>