<?php

class Artist extends BaseModel
{
    public function homepageArtists()
    {
        return $this->get('SELECT 
            a.name,
            a.thumb,
            a.birthday,
            g.name AS \'genre\',
            a.youtube
            FROM `artists` a
            JOIN `genres` g ON a.genre_id = g.id
            ORDER BY `popularity` DESC 
            LIMIT 3;');
    }
}
