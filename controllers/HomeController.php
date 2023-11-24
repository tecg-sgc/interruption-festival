<?php

class HomeController extends BaseController
{
    public function show()
    {
        return $this->view('home', []);
    }
}
