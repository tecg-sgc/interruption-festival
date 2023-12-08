<?php

class Artist extends BaseModel
{
    public function homepageArtists($edition)
    {
        return $this->get(
            'SELECT DISTINCT a.name, a.thumb, a.birthday, g.name AS \'genre\', a.youtube, a.popularity FROM `artists` a JOIN `genres` g ON a.genre_id = g.id JOIN `schedules` s ON s.artist_id = a.id JOIN `days` d ON s.day_id = d.id WHERE d.edition_id = :edition_id AND a.`deleted_at` IS NULL ORDER BY a.`popularity` DESC LIMIT 3;',
            [
                'edition_id' => $edition->id
            ]);
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
            JOIN `schedules` s ON a.id = s.artist_id
            JOIN `days` d ON s.day_id = d.id
            JOIN `tickets` t ON t.day_id = d.id
            WHERE t.id IN (:tickets_id)
            AND a.deleted_at IS NULL
            ORDER BY a.`popularity` DESC
            LIMIT 4;',
            ['tickets_id' => $ticket->id]
        );
    }

    protected function getTicketFeaturedArtistsForEdition($ticket)
    {
        return $this->get('SELECT a.name
            FROM `artists` a 
            JOIN `schedules` s ON a.id = s.artist_id
            JOIN `days` d ON s.day_id = d.id
            JOIN `editions` e ON d.edition_id = e.id
            WHERE e.id = :edition_id
            AND a.deleted_at IS NULL
            ORDER BY a.`popularity` DESC
            LIMIT 4;',
            ['edition_id' => $ticket->edition_id]
        );
    }
}
