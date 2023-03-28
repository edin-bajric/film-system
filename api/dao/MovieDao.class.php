<?php
class MovieDao {

    private $connection;
    private $hostname = "127.0.0.1:3307";
    private $database = "filmsystem";
    private $username = "root";
    private $password = "edinbajric";

    function __construct() {
        try {
            $this -> connection = new PDO("mysql:host=$this->hostname;dbname=$this->database;", $this -> username, $this -> password);
            $this -> connection -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        catch (PDOException $e) {
            echo "Error: " . $e -> getMessage();
        }
    }

    function add($movie) {
        $query = $this -> connection -> prepare("INSERT INTO movie (title, year, length, description, writer, actor) 
        VALUES (:title, :year, :length, :description, :writer, :actor)");
        $query -> execute($movie);
    }

    function get() {
        $query = $this -> connection -> prepare("SELECT * FROM movie");
        $query -> execute();
        return $query -> fetchAll(PDO::FETCH_ASSOC);
    }

    function update($id, $attribute, $value) {
        $query = $this -> connection -> prepare("UPDATE movie SET $attribute = :value WHERE id = :id");
        $query -> bindParam(':value', $value);
        $query -> bindParam(':id', $id);
        $query -> execute();
    }

    function delete($id) {
        $query = $this -> connection -> prepare("DELETE FROM movie WHERE id = :id");
        $query -> bindParam(':id', $id);
        $query -> execute();
    }
}
?>