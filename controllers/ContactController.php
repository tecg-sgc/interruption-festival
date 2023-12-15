<?php

class ContactController extends BaseController
{
    public function save($data)
    {
        // Normalement, il faut sécuriser et valider les données présentes dans $data

        Message::setNewMessage($data);

        header('Location: /'); exit();
    }
}
