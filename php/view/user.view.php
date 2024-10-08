<?php

require_once 'libs/Smarty.class.php';

class UserView
{

    private $smarty;
    private $title;

    function __construct()
    {
        $this->smarty = new Smarty();
        $this->title = '.WAV | ';
    }

    /*  PUBLIC  */

    function renderLogin($allTickets, $ticketsData, $countTickets, $msgName, $msgPass)
    {
        $this->smarty->assign('title', $this->title . 'Log In');
        $this->smarty->assign('allTickets', $allTickets);
        $this->smarty->assign('ticketsData', $ticketsData);
        $this->smarty->assign('countTickets', $countTickets);
        $this->smarty->assign('msgName', $msgName);
        $this->smarty->assign('msgPass', $msgPass);
        $this->smarty->display('templates/public/login.tpl');
    }

    function renderAdvertence($allTickets, $ticketsData, $countTickets, $userName, $advertence)
    {
        $this->smarty->assign('title', $userName);
        $this->smarty->assign('advertence', $advertence);
        $this->smarty->assign('userName', $userName);
        $this->smarty->assign('allTickets', $allTickets);
        $this->smarty->assign('ticketsData', $ticketsData);
        $this->smarty->assign('countTickets', $countTickets);
        $this->smarty->display('templates/user/welcome/index-advertence.tpl');
    }

    function renderSignup($allTickets, $ticketsData, $countTickets, $message)
    {
        $this->smarty->assign('title', $this->title . 'Sing Up');
        $this->smarty->assign('allTickets', $allTickets);
        $this->smarty->assign('ticketsData', $ticketsData);
        $this->smarty->assign('countTickets', $countTickets);
        $this->smarty->assign('message', $message);
        $this->smarty->display('templates/user/welcome/index.tpl');
    }

    /*  USER  */

    function renderVerify($userName, $ticketsData, $countTickets)
    {
        $this->smarty->assign('title', $this->title . 'Verify');
        $this->smarty->assign('ticketsData', $ticketsData);
        $this->smarty->assign('countTickets', $countTickets);
        $this->smarty->assign('message', $userName);
        $this->smarty->display('templates/user/index-verify.tpl');
    }

    function renderWelcomeHome($allTickets, $ticketsData, $countTickets, $userName)
    {
        $this->smarty->assign('title', $this->title . $userName);
        $this->smarty->assign('allTickets', $allTickets);
        $this->smarty->assign('ticketsData', $ticketsData);
        $this->smarty->assign('countTickets', $countTickets);
        $this->smarty->assign('userName', $userName);
        $this->smarty->display('templates/user/welcome/index.tpl');
    }

    function renderTicketsByCategory($ticketsByCategory, $param_id, $userName)
    {
        $this->smarty->assign('title', $this->title . $userName);
        $this->smarty->assign('ticketsByCategory', $ticketsByCategory);
        $this->smarty->assign('param_id', $param_id);
        $this->smarty->assign('userName', $userName);
        $this->smarty->display('templates/user/ticket/index.tpl');
    }

    function renderAllTickets($allTickets, $countTickets, $userName)
    {
        $this->smarty->assign('title', $userName . ' | All tickets');
        $this->smarty->assign('allTickets', $allTickets);
        $this->smarty->assign('countTickets', $countTickets);
        $this->smarty->assign('userName', $userName);
        $this->smarty->display('templates/user/ticket/index-all.tpl');
    }

    function renderAdminHome($allTickets, $ticketsData, $countTickets, $userName, $allUsers)
    {
        $this->smarty->assign('title', $userName . ' | ADMIN');
        $this->smarty->assign('allUsers', $allUsers);
        $this->smarty->assign('userName', $userName);
        $this->smarty->assign('allTickets', $allTickets);
        $this->smarty->assign('ticketsData', $ticketsData);
        $this->smarty->assign('countTickets', $countTickets);
        $this->smarty->display('templates/user/adminHome.tpl');
    }
}
