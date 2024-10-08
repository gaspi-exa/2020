<?php

require_once 'php/model/category.model.php';
require_once 'php/model/ticket.model.php';

class CategoryController
{

    private $model;
    private $ticketModel;
    private $allTickets;
    private $allCategories;

    function __construct()
    {
        $this->model = new CategoryModel();
        $this->ticketModel = new TicketModel();
        $this->allTickets = $this->ticketModel->getTickets();
        $this->allCategories = $this->getCategories();
    }

    public function getCategories()
    {
        return $this->model->getCategories();
    }

    function getQuantityTicketsByCategory()
    {
        $catCounts = array();
        $numId = 0;
        for ($i = 0; $i < count($this->allCategories); $i++) {
            $ticketsCount = 0;
            $numId++;
            foreach ($this->allTickets as $ticket) {
                if ($ticket->id_category == $numId) {
                    $ticketsCount++;
                }
            }
            array_push($catCounts, $ticketsCount);
        }
        return $catCounts;
    }

    /* ADMIN */

    function addCategory()
    {
        $name = $_POST['name'];
        $price = $_POST['price'];
        $id_category = $_POST['id_category'];
        if (
            isset($name) && !empty($name) &&
            isset($price) && !empty($price) &&
            isset($id_category) && !empty($id_category)
        ) {
            $this->model->addCategory($name, $price, $id_category);
            header('Location: ' . ADMIN);
        }
    }

    function deleteCategory($params = null)
    {
        $id_ticket = $params[':ID'];
        $this->model->deleteCategory($id_ticket);
        header('Location: ' . ADMIN);
    }

    function updateCategory()
    {
        $name = $_POST['name'];
        $price = $_POST['price'];
        $id_category = $_POST['id_category'];
        if (
            isset($name) && !empty($name) &&
            isset($price) && !empty($price) &&
            isset($id_category) && !empty($id_category)
        ) {
            $this->model->updateCategory($name, $price, $id_category);
            header('Location: ' . ADMIN);
        }
    }
}
