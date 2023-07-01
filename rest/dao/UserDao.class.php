<?php
require_once dirname(__FILE__).'/BaseDao.class.php';

class UserDao extends BaseDao {
    public function __construct(){
        parent::__construct("user");
    }

    public function get_user_by_username($username) {
        $query = $this -> connection -> prepare("SELECT * FROM user WHERE username = :username");
        $query -> bindParam(":username", $username); 
        $query -> execute();
        return $query -> fetch(PDO::FETCH_ASSOC);
    }
}
?>