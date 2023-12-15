<?php

class Day extends BaseModel
{
    public function editionDays($edition)
    {
        $days = $this->get('SELECT `id`, `date`
            FROM `days` d
            WHERE d.deleted_at IS NULL
            AND d.edition_id = :edition_id
            ORDER BY d.date;',
            ['edition_id' => $edition->id]
        );

        $daysWithIdKeys = [];

        foreach($days as $day) {
            $day->name = date('l', strtotime($day->date));
            $day->schedules = [];
            $daysWithIdKeys[$day->id] = $day;
        }

        return $daysWithIdKeys;
    }
}
