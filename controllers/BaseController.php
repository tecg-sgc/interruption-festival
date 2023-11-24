<?php

abstract class BaseController
{
    public function handle()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') return $this->save($_POST);
        return $this->show();
    }

    protected function view($view, $data)
    {
        extract($data);
        include('./views/' . $view . '.php');
    }

    protected function redirect($uri)
    {
        header("Location: " . $uri);
        die();
    }
}