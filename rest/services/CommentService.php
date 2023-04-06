<?php
require_once dirname(__FILE__).'/BaseService.php';
require_once dirname(__FILE__).'/../dao/CommentDao.class.php';

class CommentService extends BaseService{

    public function __construct(){
        parent::__construct(new CommentDao());
    }
}
?>