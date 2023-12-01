<?php

class Artist extends baseModel
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
            ORDER BY a.`popularity` DESC 
            LIMIT 3;',
            ['edition_id' => $edition->id]
        );
    }
}
