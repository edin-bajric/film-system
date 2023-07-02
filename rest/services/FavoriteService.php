<?php
require_once dirname(__FILE__).'/BaseService.php';
require_once dirname(__FILE__).'/../dao/FavoriteDao.class.php';

class FavoriteService extends BaseService{

    public function __construct(){
        parent::__construct(new FavoriteDao());
    }

    public function get_movie_from_favorites($user_id) {
        return $this -> dao -> get_movie_from_favorites($user_id);
    }

    public function get_director_from_favorites($user_id) {
        return $this -> dao -> get_director_from_favorites($user_id);
    }
}
?>