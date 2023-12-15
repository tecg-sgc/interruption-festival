<?php

class Message extends BaseModel
{
    public function newMessage($data)
    {
        $this->create('INSERT INTO `messages` (`from`, `email`, `company`, `content`) VALUES
            (:contact_name, :contact_email, :contact_company, :contact_message);',
            $data
        );
    }
}
