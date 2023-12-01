<?php

class HomeController extends BaseController
{
    public function show()
    {
        return $this->view('home', [
            'title' => 'Salut les copains',
        ]);
    }
}
