<?php

class Artist extends BaseModel
{
    public function homepageArtists($edition)
    {
        return $this->get(
            'SELECT DISTINCT a.`name`, g.`name` AS \'genre\', a.`birthday`, a.`youtube`, a.`thumb`, a.`popularity`
            FROM `artists` a 
            JOIN `genres` g ON a.`genre_id` = g.`id`
            JOIN `schedules` s ON a.id = s.artist_id
            JOIN `days` d ON s.day_id = d.id
            WHERE d.edition_id = :edition_id
            AND a.`deleted_at` IS NULL
            ORDER BY a.`popularity` DESC 
            LIMIT 3;',
            ['edition_id' => $edition->id]
        );
    }

    public function ticketFeaturedArtists($ticket)
    {
        if($ticket->day_id) {
            return $this->getTicketFeaturedArtistsForDay($ticket);
        }

        return $this->getTicketFeaturedArtistsForEdition($ticket);
    }

    protected function getTicketFeaturedArtistsForDay($ticket)
    {
        return $this->get('SELECT a.name
            FROM `artists` a
            JOIN `schedules` s ON s.artist_id = a.id
            JOIN `days` d ON s.day_id = d.id
            WHERE d.id = :ticket_day_id
            AND a.deleted_at IS NULL
            ORDER BY a.popularity DESC
            LIMIT 4;',
            ['ticket_day_id' => $ticket->day_id]
        );
    }

    protected function getTicketFeaturedArtistsForEdition($ticket)
    {
        return $this->get('SELECT a.name
            FROM `artists` a
            JOIN `schedules` s ON s.artist_id = a.id
            JOIN `days` d ON s.day_id = d.id
            WHERE d.edition_id = :ticket_edition_id
            AND a.deleted_at IS NULL
            ORDER BY a.popularity DESC
            LIMIT 4;',
            ['ticket_edition_id' => $ticket->edition_id]
        );
    }
}
