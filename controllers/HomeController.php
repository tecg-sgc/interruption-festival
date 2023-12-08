<?php

class HomeController extends BaseController
{
    public function show()
    {
        $edition = Edition::getCurrent();

        return $this->view('home', [
            'title' => $edition->title,
            'artists' => Artist::getHomepageArtists($edition),
            'tickets' => Ticket::getHomepageTickets($edition),
        ]);
    }
}
