<?php

require_once 'libs/Smarty.class.php';

class TicketView
{

    private $title;
    private $smarty;

    function __construct()
    {
        $this->title = '.WAV | ';
        $this->smarty = new Smarty();
    }

    function renderHome($allTickets, $ticketsData, $countTickets)
    {
        $this->smarty->assign('title', $this->title);
        $this->smarty->assign('allTickets', $allTickets);
        $this->smarty->assign('ticketsData', $ticketsData);
        $this->smarty->assign('countTickets', $countTickets);
        $this->smarty->display('templates/public/index.tpl');
    }


    function renderTicketsByCategory($ticketsByCategory, $param_id)
    {
        $this->smarty->assign('title', $this->title . 'Tickets by category');
        $this->smarty->assign('ticketsByCategory', $ticketsByCategory);
        $this->smarty->assign('param_id', $param_id);
        $this->smarty->display('templates/public/ticket/index.tpl');
    }

    function renderAllTickets($allTickets, $countTickets)
    {
        $this->smarty->assign('title', $this->title . 'All tickets');
        $this->smarty->assign('allTickets', $allTickets);
        $this->smarty->assign('countTickets', $countTickets);
        $this->smarty->display('templates/public/ticket/index-all.tpl');
    }

    function renderTicketDetails($ticket)
    {
        $this->smarty->assign('title', $this->title . 'Details tickets');
        $this->smarty->assign('ticket', $ticket);
        $this->smarty->display('templates/public/ticket/index-details.tpl');
    }

    function renderTicketDetailsNormal($ticket, $user)
    {
        $this->smarty->assign('title', 'Details ticket');
        $this->smarty->assign('ticket', $ticket);
        $this->smarty->assign('user', $user);
        $this->smarty->display('templates/user/ticket/index-details-normal.tpl');
    }

    function renderTicketDetailsAdmin($ticket, $user)
    {
        $this->smarty->assign('title', 'Details ticket');
        $this->smarty->assign('ticket', $ticket);
        $this->smarty->assign('user', $user);
        $this->smarty->display('templates/user/ticket/index-details.tpl');
    }

    function showHomeLocation()
    {
        header('Location:' . BASE_URL);
    }
}
