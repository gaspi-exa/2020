<?php

require_once 'php/controller/auth.helper.php';
require_once 'php/model/user.model.php';
require_once 'php/view/user.view.php';
require_once 'php/controller/ticket.controller.php';
require_once 'php/model/ticket.model.php';
require_once 'php/model/category.model.php';

class UserController
{

    private $authHelper;
    private $model;
    private $view;
    private $ticketModel;
    private $ticketCtrl;
    private $categoryCtrl;
    private $allUsers;
    private $allTickets;
    private $ticketsData;
    private $quantityTicketsByCategory;
    private $userName;


    function __construct()
    {
        $this->authHelper = new AuthHelper();
        $this->model = new UserModel();
        $this->view = new UserView();
        $this->ticketModel = new TicketModel();
        $this->ticketCtrl = new TicketController();
        $this->categoryCtrl = new CategoryController();
        $this->allUsers = $this->model->getAllUsers();
        $this->allTickets = $this->ticketCtrl->getAllTickets();
        $this->ticketsData = $this->ticketCtrl->getTicketsData();
        $this->quantityTicketsByCategory = $this->categoryCtrl->getQuantityTicketsByCategory();
    }

    function addUser()
    {
        $name = $_POST['userName'];
        $email = $_POST['userEmail'];
        $password = $_POST['userPassword'];
        $clearence = 'null';
        if (
            isset($name) && !empty($name) &&
            isset($email) && !empty($email) &&
            isset($password) && !empty($password)
        ) {
            $name = strtoupper($name);
            $encriptedPass = password_hash($password, PASSWORD_DEFAULT);

            if ($this->getExistingUser($name, $email) == false) {
                $this->getSignup('User already exist');
            } else {
                $this->model->addUser($name, $email, $encriptedPass, $clearence);
                $this->userName = $name;
                session_start();
                $_SESSION['NAME'] = $name;
                $this->getWelcomeUser($name);
            }
        } else
            $this->getSignup('Input is empty!');
    }

    function getExistingUser($name, $email)
    {
        $exist = 0;
        foreach ($this->allUsers as $user_db) {
            if ($name == $user_db->name) {
                $exist++;
            } elseif ($email == $user_db->email) {
                $exist++;
            }
        }
        if ($exist == 0)
            return true;
        else
            return false;
    }

    function verifyUser()
    {
        $name = $_POST['userName'];
        $password = $_POST['userPassword'];
        if (
            isset($name) && !empty($name) &&
            isset($password) && !empty($password)
        ) {
            $user_db = $this->model->getUser($name);
            if (isset($user_db) && $user_db) {
                if (password_verify($password, $user_db->password)) {
                    $this->userName = $name;
                    session_start();
                    $_SESSION['NAME'] = $user_db->name;
                    //$_SESSION['LAST_ACTIVITY'] = time();
                    $this->getWelcomeUser($user_db->name);
                } else
                    $this->getLogin('', 'Invalid password');
            } else
                $this->getLogin('User do not exist', '');
        } else
            $this->getLogin('Input is empty!', '');
    }

    function getLogin($msgName = null, $msgPass = null)
    {
        $this->view->renderLogin($this->allTickets, $this->ticketsData, $this->quantityTicketsByCategory, $msgName, $msgPass);
    }

    function getSignup($message = null)
    {
        $this->view->renderSignup($this->allTickets, $this->ticketsData, $this->quantityTicketsByCategory, $message);
    }

    // function getVerifyUser($userName)
    // {
    //     $this->view->renderVerify($userName, $this->ticketsData, $this->quantityTicketsByCategory);
    // }

    function getWelcomeUser($userName)
    {
        $this->view->renderWelcomeHome($this->allTickets, $this->ticketsData, $this->quantityTicketsByCategory, $userName);
    }

    function getHome()
    {
        session_start();
        if ($this->authHelper->checkLoggedIn())
            $this->getSignup('Join Up! :)');
        else
            $this->view->renderWelcomeHome($this->allTickets, $this->ticketsData, $this->quantityTicketsByCategory, $_SESSION['NAME']);
    }

    function getTicketsByCategory($params = null)
    {
        $category_id = $params[':ID'];
        $ticketsByCategory = $this->ticketModel->getTickets($category_id);
        session_start();
        if ($this->authHelper->checkLoggedIn())
            $this->getSignup('Join Up! :)');
        else
            $this->view->renderTicketsByCategory($ticketsByCategory, $params, $_SESSION['NAME']);
    }

    function showAllTickets()
    {
        session_start();
        if ($this->authHelper->checkLoggedIn())
            $this->getSignup('Join Up! :)');
        else
            $this->view->renderAllTickets($this->allTickets, $this->quantityTicketsByCategory, $_SESSION['NAME']);
    }

    function getAdminHome()
    {
        session_start();
        if ($this->authHelper->checkLoggedIn())
            $this->getSignup('Join Up! :)');
        else {
            $user_db = $this->model->getUser($_SESSION['NAME']);
            if ($user_db->clearence == 'admin')
                $this->view->renderAdminHome($this->allTickets, $this->ticketsData, $this->quantityTicketsByCategory, $_SESSION['NAME'], $this->allUsers);
            else
                $this->showAdvertence('You have not permission. Enter valid admin:');
        }
    }

    function showAdvertence($advertence)
    {
        $this->view->renderAdvertence($this->allTickets, $this->ticketsData, $this->quantityTicketsByCategory, $_SESSION['NAME'], $advertence);
    }

    //ADMIN

    function updateUserClearence()
    {
        $user_id = $_POST['user_id'];
        $clearence = $_POST['clearence'];
        if (
            isset($user_id) && !empty($user_id) &&
            isset($clearence) && !empty($clearence)
        ) {
            $this->model->updateUserClearence($user_id, $clearence);
            header('Location: ' . ADMIN);
        }
    }

    function deleteUser($params = null)
    {
        $user_id = $params[':ID'];
        $this->model->deleteUser($user_id);
        header('Location: ' . ADMIN);
    }
}
