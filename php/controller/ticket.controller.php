<?php

require_once 'php/model/ticket.model.php';
require_once 'php/controller/category.controller.php';
require_once 'php/view/ticket.view.php';
require_once 'php/controller/auth.helper.php';
require_once 'php/view/user.view.php';
require_once 'php/model/user.model.php';

class TicketController
{

    private $model;
    private $categoryCtrl;
    private $view;
    private $allTickets;
    private $allCategories;
    private $ticketsData;
    private $quantityTicketsByCategory;
    private $authHelper;
    private $userView;
    private $userModel;
    private $users;

    function __construct()
    {
        $this->model = new TicketModel();
        $this->categoryCtrl = new CategoryController();
        $this->view = new TicketView();
        $this->authHelper = new AuthHelper();
        $this->userView = new UserView();
        $this->userModel = new UserModel();
        $this->users = $this->userModel->getAllUsers();
        $this->allTickets = $this->getAllTickets();
        $this->allCategories = $this->categoryCtrl->getCategories();
        $this->ticketsData = $this->getTicketsData();
        $this->quantityTicketsByCategory = $this->categoryCtrl->getQuantityTicketsByCategory();
    }

    function getAllTickets()
    {
        return $this->model->getTickets();
    }

    function getTicketsData()
    {
        return array($this->allTickets, $this->allCategories);
    }


    function getHome()
    {
        session_start();
        if ($this->authHelper->checkLoggedIn())
            $this->view->renderHome($this->allTickets, $this->ticketsData, $this->quantityTicketsByCategory);
        else
            $this->userView->renderWelcomeHome($this->allTickets, $this->ticketsData, $this->quantityTicketsByCategory, $_SESSION['NAME']);
    }

    function getTicketsByCategory($params = null)
    {
        $category_id = $params[':ID'];
        $ticketsByCategory = $this->model->getTickets($category_id);
        $this->view->renderTicketsByCategory($ticketsByCategory, $params);
    }

    function showAllTickets()
    {
        $this->view->renderAllTickets($this->allTickets, $this->quantityTicketsByCategory);
    }

    function getTicketDetails($params = null)
    {
        $ticket_id = $params[':ID'];
        $ticket = $this->model->getTicket($ticket_id);
        session_start();
        if ($this->authHelper->checkLoggedIn()) {
            $this->view->renderTicketDetails($ticket);
        } else {
            foreach ($this->users as $user) {
                if ($user->name == $_SESSION['NAME']) {
                    $userClearence = $user->clearence;
                    $user_select  = $user;
                }
            }
            if ($userClearence == 'admin') {
                $this->view->renderTicketDetailsAdmin($ticket, $user_select);
            } else {
                $this->view->renderTicketDetailsNormal($ticket, $user_select);
            }
        }
    }

    /* ADMIN */

    function addTicket()
    {
        $name = $_POST['name'];
        $date = $_POST['date'];
        $category = $_POST['category'];
        $count = $_POST['count'];
        if (
            isset($name) && !empty($name) &&
            isset($date) && !empty($date) &&
            isset($category) && !empty($category) &&
            isset($count) && !empty($count)
        ) {
            for ($i = 0; $i < $count; $i++) {
                $this->model->addTicket($name, $date, $category);
            }
            header('Location: ' . ADMIN);
        }
    }

    function deleteTicket($params = null)
    {
        $id_ticket = $params[':ID'];
        $this->model->deleteTicket($id_ticket);
        header('Location: ' . ADMIN);
    }

    function updateTicket()
    {
        $name = $_POST['name'];
        $date = $_POST['date'];
        $id_category = $_POST['category'];
        $id_ticket = $_POST['id_ticket'];
        if (
            isset($name) && !empty($name) &&
            isset($date) && !empty($date) &&
            isset($id_category) && !empty($id_category) &&
            isset($id_ticket) && !empty($id_ticket)
        ) {
            $this->model->updateTicket($name, $date, $id_category, $id_ticket);
            header('Location: ' . ADMIN);
        }
    }
}
