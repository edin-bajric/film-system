<?php
class BaseDao {

    private $connection;
    private $table;

    function __construct($table) {
        try {
            $this -> table = $table;
            $hostname = "127.0.0.1:3307";
            $database = "filmsystem";
            $username = "root";
            $password = "edinbajric";

            $this -> connection = new PDO("mysql:host=$hostname;dbname=$database;", $username, $password);
            $this -> connection -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        catch (PDOException $e) {
            echo "Error: " . $e -> getMessage();
        }
    }

    function get() {
        $query = $this -> connection -> prepare("SELECT * FROM " . $this -> table);
        $query -> execute();
        return $query -> fetchAll(PDO::FETCH_ASSOC);
    }

    function get_by_id($id) {
        $query = $this -> connection -> prepare("SELECT * FROM " . $this -> table . " WHERE id = :id");
        $query -> bindParam(":id", $id);
        $query -> execute();
        return $query -> fetchAll(PDO::FETCH_ASSOC);
    }

    function delete($id) {
        $query = $this -> connection -> prepare("DELETE FROM " .$this -> table . " WHERE id = :id");
        $query -> bindParam(':id', $id);
        $query -> execute();
    }
    
    function add($entity){
        $query = "INSERT INTO " . $this -> table . " (";
        foreach($entity as $column => $value){
            $query .= $column . ", ";
        }
        $query = substr($query, 0, -2);
        $query .= ") VALUES (";
        foreach($entity as $column => $value){
            $query .= ":" . $column . ", ";
        }
        $query = substr($query, 0, -2);
        $query .= ")";
        
        $stmt = $this->connection->prepare($query);
        $stmt->execute($entity);
        $entity['id'] = $this->connection->lastInsertId();
        return $entity;
    }

    function update($entity, $id, $id_column = "id") {
        $query = "UPDATE " . $this -> table . " SET ";
        foreach($entity as $column => $value) {
            $query .= $column . "=:" . $column . ", ";
        }

        $query = substr($query, 0, -2);
        $query .= " WHERE {$id_column} = :id";
        $entity['id'] = $id;
        $statement = $this -> connection -> prepare($query);
        $statement -> execute($entity);
    }

}
?>