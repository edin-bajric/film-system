<?php
require_once dirname(__FILE__).'/BaseService.php';
require_once dirname(__FILE__).'/../dao/WatchlistDao.class.php';

class WatchlistService extends BaseService{

    public function __construct(){
        parent::__construct(new WatchlistDao());
    }

    public function get_movie_from_watchlist($user_id) {
        return $this -> dao -> get_movie_from_watchlist ($user_id);
    }

    public function delete_movie_from_watchlist($user_id, $movie_id) {
        return $this -> dao -> delete_movie_from_watchlist($user_id, $movie_id);
    }
}
?>