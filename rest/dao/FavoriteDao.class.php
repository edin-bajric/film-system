<?php
require_once dirname(__FILE__).'/BaseDao.class.php';

class FavoriteDao extends BaseDao {
    public function __construct(){
        parent::__construct("favorite");
    }

    public function get_movie_from_favorites ($user_id) {
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
        m.image
FROM favorite f
JOIN user u ON f.user_id = u.id
JOIN movie m ON f.movie_id = m.id
JOIN movie_director md ON m.id = md.movie_id
JOIN director d ON d.id = md.director_id
JOIN movie_genre mg ON m.id = mg.movie_id
JOIN genre g ON g.id = mg.genre_id
WHERE f.user_id = :user_id
GROUP BY m.id;");
        $query -> bindParam(":user_id", $user_id);
        $query -> execute();
        return $query -> fetchAll(PDO::FETCH_ASSOC);
    }

    public function get_director_from_favorites ($user_id) {
        $query = $this -> connection -> prepare("SELECT d.id, 
        d.description, 
        d.name, 
        d.occupation,
        d.born,
        d.died,
        d.known_for,
        d.biography,
        d.image
        FROM favorite f
        JOIN director d ON f.director_id = d.id
        JOIN user u ON f.user_id = u.id
        WHERE f.user_id = :user_id;");
        $query -> bindParam(":user_id", $user_id);
        $query -> execute();
        return $query -> fetchAll(PDO::FETCH_ASSOC);
    }
}
?>