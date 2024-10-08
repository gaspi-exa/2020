<?php

    require_once 'php/model/connection.model.php';

    class CommentModel {

        private $db;

        function __construct() {
            $connection = new Connection();
            $this->db = $connection->getConnection();
        }

        function getCommentsByTicketID($ticket_id) {
            $query = $this->db->prepare('SELECT comment.*, users.name as user_name FROM comment INNER JOIN users ON comment.user_id = users.user_id WHERE ticket_id = ?');
            $query->execute(array($ticket_id));
            return $query->fetchAll(PDO::FETCH_OBJ);
        }

        function postComment($description, $ticket_id, $user_id, $score) {
            $query = $this->db->prepare('INSERT INTO comment(description, ticket_id, user_id, score) VALUES(?, ?, ?, ?)');
            $query->execute(array($description, $ticket_id, $user_id, $score));
            return $this->db->lastInsertId();
        }

        function deleteComment($comment_id){
            $query = $this->db->prepare('DELETE FROM comment WHERE comment_id = ?');
            $query->execute(array($comment_id));
            return $query->rowCount();
        }
          
    }
    
    