<?php
require_once dirname(__FILE__).'/BaseDao.class.php';

class MovieDao extends BaseDao {
    public function __construct(){
        parent::__construct("movie");
    }

    public function get_full_movie() {
        $query = $this -> connection -> prepare("SELECT m.id, 
        m.title, 
        m.year, 
        m.length, 
        GROUP_CONCAT(DISTINCT g.name SEPARATOR ', ') AS 'genre', 
        m.rating, 
        GROUP_CONCAT(DISTINCT d.name SEPARATOR ', ') AS 'director',
        m.writer, 
        m.actor, 
        m.description,
        m.image,
        m.trailer
        FROM movie m
        JOIN movie_director md ON m.id = md.movie_id
        JOIN director d ON d.id = md.director_id
        JOIN movie_genre mg ON m.id = mg.movie_id
        JOIN genre g ON g.id = mg.genre_id
        GROUP BY m.id;");
        $query -> execute();
        return $query -> fetchAll(PDO::FETCH_ASSOC);
    }

    public function get_movie_by_title($title) {
        $query = $this -> connection -> prepare("SELECT id FROM movie WHERE title = :title");
        $query -> bindParam(":title", $title);
        $query -> execute();
        return $query -> fetch(PDO::FETCH_ASSOC);
    }
}
?>