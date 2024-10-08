<?php

    require_once 'php/model/connection.model.php';

    class TicketModel {

        private $db;

        function __construct() {
            $connection = new Connection();
            $this->db = $connection->getConnection();
        }

        function getTickets() {
            $query = $this->db ->prepare('SELECT ticket.*, category.price as cat_price, category.name as cat_name FROM ticket INNER JOIN category ON ticket.id_category = category.id_category');
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        }

        function getTicket($id_ticket = null) {
            $query = $this->db ->prepare('SELECT ticket.*, category.price as cat_price, category.name as cat_name FROM ticket INNER JOIN category ON ticket.id_category = category.id_category WHERE id_ticket=?');
            $query->execute(array($id_ticket));
            return $query->fetch(PDO::FETCH_OBJ);
        }
        
// ADMIN

        function addTicket($name, $date, $category) {
            $query = $this->db->prepare('INSERT INTO ticket(name, date, id_category) VALUES(?, ?, ?)');
            $query->execute(array($name, $date, $category));
        }

        function deleteTicket($id_ticket) {
            $query = $this->db->prepare('DELETE FROM ticket WHERE id_ticket=?');
            $query->execute(array($id_ticket));
        }

        function updateTicket($name, $date, $id_category, $id_ticket) {
            $query = $this->db ->prepare('UPDATE ticket SET name=?, date=?, id_category=? WHERE id_ticket=?');
            $query ->execute(array($name, $date, $id_category, $id_ticket));
        }

// API
      
        function deleteTicketFromAPI($ticket_id){
            $query = $this->db->prepare("DELETE FROM ticket WHERE id_ticket=?");
            $query->execute(array($ticket_id));
            return $query->rowCount();
        }

        function updateTicketFromAPI($name, $date, $id_category, $id_ticket){
            $query = $this->db ->prepare('UPDATE ticket SET name=?, date=?, id_category=? WHERE id_ticket=?');
            $query->execute(array($name, $date, $id_category, $id_ticket));
            return $query->rowCount();
        }
      
        function addTicketFromAPI($name, $date, $id_category){
            $query = $this->db->prepare('INSERT INTO ticket(name, date, id_category) VALUES(?, ?, ?)');
            $query->execute(array($name, $date, $id_category));
            return $this->db->lastInsertId();
        }

        
    }