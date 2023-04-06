<?php
require_once dirname(__FILE__).'/BaseService.php';
require_once dirname(__FILE__).'/../dao/WatchlistDao.class.php';

class WatchlistService extends BaseService{

    public function __construct(){
        parent::__construct(new WatchlistDao());
    }
}
?>