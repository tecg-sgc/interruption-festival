<?php

class Artist extends baseModel
{
    public function homepageArtists()
    {
        return $this->get('SELECT a.`name`, g.`name` AS \'genre\', a.`birthday`, a.`youtube`, a.`thumb`
            FROM `artists` a 
            JOIN `genres` g ON a.`genre_id` = g.`id`
            ORDER BY a.`popularity` DESC 
            LIMIT 3;');
    }
}
