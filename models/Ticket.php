<?php

class Ticket extends baseModel
{
    public function homepageTickets($edition)
    {
        $tickets = $this->get(
            'SELECT t.id, t.edition_id, t.name, t.price, t.vat, t.discount, t.content, d.date, t.day_id
            FROM `tickets` t
            LEFT OUTER JOIN `days` d ON t.day_id = d.id
            WHERE t.edition_id = :edition_id
            AND t.deleted_at IS NULL
            ORDER BY d.date ASC;',
            ['edition_id' => $edition->id]
        );

        foreach ($tickets as $ticket) {
            $ticket->artists = Artist::getTicketFeaturedArtists($ticket);
        }

        return $tickets;
    }
}
