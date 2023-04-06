<?php
require_once dirname(__FILE__).'/BaseService.php';
require_once dirname(__FILE__).'/../dao/RatingDao.class.php';

class RatingService extends BaseService{

    public function __construct(){
        parent::__construct(new RatingDao());
    }
}
?>