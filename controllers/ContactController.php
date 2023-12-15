<?php

class ContactController extends BaseController
{
    public function save($data)
    {
        Message::setNewMessage($data);

        header('Location: /'); exit();
    }
}
