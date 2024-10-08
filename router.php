<?php

require_once 'RouterClass.php';
require_once 'php/controller/ticket.controller.php';
require_once 'php/controller/category.controller.php';
require_once 'php/controller/user.controller.php';
require_once 'php/controller/auth.helper.php';

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');
define('ADMIN', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/admin');

$r = new Router();

/* PUBLIC */

$r->addRoute('home', 'GET', 'TicketController', 'getHome');

$r->addRoute('tickets-category/:ID', 'GET', 'TicketController', 'getTicketsByCategory');
$r->addRoute('tickets-all', 'GET', 'TicketController', 'showAllTickets');
$r->addRoute('ticket-detail/:ID', 'GET', 'TicketController', 'getTicketDetails');

/* USER */

$r->addRoute('signup', 'GET', 'UserController', 'getSignup');
$r->addRoute('login', 'GET', 'UserController', 'getLogin');
$r->addRoute('verify', 'POST', 'UserController', 'addUser');
$r->addRoute('logout', 'GET', 'AuthHelper', 'logOut');

$r->addRoute('welcome', 'POST', 'UserController', 'verifyUser');

$r->addRoute('user', 'GET', 'UserController', 'getHome');

$r->addRoute('user/tickets-category/:ID', 'GET', 'UserController', 'getTicketsByCategory');
$r->addRoute('user/tickets-all', 'GET', 'UserController', 'showAllTickets');
$r->addRoute('user/ticket-detail/:ID', 'GET', 'TicketController', 'getTicketDetails');

/* ADMIN */

$r->addRoute('admin', 'GET', 'UserController', 'getAdminHome');

$r->addRoute('addTicket', 'POST', 'TicketController', 'addTicket');
$r->addRoute('deleteTicket/:ID', 'GET', 'TicketController', 'deleteTicket');
$r->addRoute('updateTicket', 'POST', 'TicketController', 'updateTicket');

$r->addRoute('addCategory', 'POST', 'CategoryController', 'addCategory');
$r->addRoute('deleteCategory/:ID', 'GET', 'CategoryController', 'deleteCategory');
$r->addRoute('updateCategory', 'POST', 'CategoryController', 'updateCategory');

$r->addRoute('updateUser', 'POST', 'UserController', 'updateUserClearence');
$r->addRoute('deleteUser/:ID', 'GET', 'UserController', 'deleteUser');

/* DEFAULT */

$r->setDefaultRoute('TicketController', 'getHome');

$r->route($_GET['action'], $_SERVER['REQUEST_METHOD']);
