<?php
require_once dirname(__FILE__).'/BaseService.php';
require_once dirname(__FILE__).'/../dao/DirectorDao.class.php';

class DirectorService extends BaseService{

    public function __construct(){
        parent::__construct(new DirectorDao());
    }
}
?>