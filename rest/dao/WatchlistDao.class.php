<?php
require_once dirname(__FILE__).'/BaseDao.class.php';

class WatchlistDao extends BaseDao {
    public function __construct(){
        parent::__construct("watchlist");
    }

    public function get_movie_from_watchlist ($user_id) {
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
FROM watchlist w
JOIN user u ON w.user_id = u.id
JOIN movie m ON w.movie_id = m.id
JOIN movie_director md ON m.id = md.movie_id
JOIN director d ON d.id = md.director_id
JOIN movie_genre mg ON m.id = mg.movie_id
JOIN genre g ON g.id = mg.genre_id
WHERE w.user_id = :user_id
GROUP BY m.id;
");
        $query -> bindParam(":user_id", $user_id);
        $query -> execute();
        return $query -> fetchAll(PDO::FETCH_ASSOC);
    }

    public function delete_movie_from_watchlist ($user_id, $movie_id) {
        $query = $this -> connection -> prepare("DELETE FROM watchlist WHERE user_id = :user_id AND movie_id = :movie_id");
        $query -> bindParam(":user_id", $user_id);
        $query -> bindParam(":movie_id", $movie_id);
        $query -> execute();
    }
}
?>