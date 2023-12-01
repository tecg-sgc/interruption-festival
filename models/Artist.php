<?php

class Artist extends BaseModel
{
    public function homepageArtists($edition)
    {
        return $this->get(
            'SELECT DISTINCT a.name, a.thumb, a.birthday, g.name AS \'genre\', a.youtube, a.popularity FROM `artists` a JOIN `genres` g ON a.genre_id = g.id JOIN `schedules` s ON s.artist_id = a.id JOIN `days` d ON s.day_id = d.id WHERE d.edition_id = :edition_id ORDER BY a.`popularity` DESC LIMIT 3;',
            [
                'edition_id' => $edition->id
            ]);
    }
}
