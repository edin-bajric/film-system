<?php
require_once dirname(__FILE__).'/BaseService.php';
require_once dirname(__FILE__).'/../dao/GenreDao.class.php';

class GenreService extends BaseService{

    public function __construct(){
        parent::__construct(new GenreDao());
    }
}
?>