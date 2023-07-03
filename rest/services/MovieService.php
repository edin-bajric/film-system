<?php
require_once dirname(__FILE__).'/BaseService.php';
require_once dirname(__FILE__).'/../dao/MovieDao.class.php';

class MovieService extends BaseService{

    public function __construct(){
        parent::__construct(new MovieDao());
    }

    public function get_full_movie() {
        return $this -> dao -> get_full_movie();
    }

    public function get_movie_by_title($title) {
        return $this -> dao -> get_movie_by_title($title);
    }
}
?>