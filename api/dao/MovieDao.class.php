<?php
require_once 'BaseDao.class.php';

class MovieDao extends BaseDao {
    public function __construct(){
        parent::__construct("movie");
    }
}
?>