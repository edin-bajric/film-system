<?php
require_once dirname(__FILE__).'/BaseService.php';
require_once dirname(__FILE__).'/../dao/FavoriteDao.class.php';

class FavoriteService extends BaseService{

    public function __construct(){
        parent::__construct(new FavoriteDao());
    }
}
?>