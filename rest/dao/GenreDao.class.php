<?php
require_once dirname(__FILE__).'/BaseDao.class.php';

class GenreDao extends BaseDao {
    public function __construct(){
        parent::__construct("genre");
    }
}
?>