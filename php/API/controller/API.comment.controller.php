<?php

require_once 'php/model/comment.model.php';
require_once 'php/API/view/API.view.php';
require_once 'php/API/controller/API.controller.php';

class APICommentController extends APIController
{

    private $model;
    private $view;

    function __construct()
    {
        parent::__construct();
        $this->model = new CommentModel();
        $this->view = new APIView();
    }

    public function getAll()
    {
        $comments = $this->model->getAll();
        $this->view->response($comments, 200);
    }

    public function getCommentsByTicketID($params = null)
    {
        $ticket_id = $params[':ID'];
        $comments = $this->model->getCommentsByTicketID($ticket_id);
        $this->view->response($comments, 200);
    }

    public function postComment()
    {
        $comment = $this->getData();
        $response = $this->model->postComment(
            $comment->description,
            $comment->ticket_id,
            $comment->user_id,
            $comment->score
        );
        if ($response)
            $this->view->response($response, 200);
        else
            $this->view->response("Comment has not posted", 404);
    }

    public function deleteComment($params = null)
    {
        $comment_id = $params[':ID'];
        $comment = $this->model->deleteComment($comment_id);
        if ($comment)
            $this->view->response("Comment $comment_id has deleted", 200);
        else
            $this->view->response("Comment $comment_id do not exist :(", 404);
    }
}
