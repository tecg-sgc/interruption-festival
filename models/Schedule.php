<?php

class Schedule extends BaseModel
{
    public function homepageTable($edition)
    {
        // 1. On récupère les jours qui appartiennent à cette édition.
        $days = Day::getEditionDays($edition);

        // 2. On extrait les identifiant de ces jours afin de pouvoir les utiliser plus loin.
        $day_ids = array_keys($days);

        // 3. On récupère les horaires pour les jours sélectionnés précedemment.
        $schedules = $this->get('SELECT 
            s.`day_id`, 
            s.`started_at`, 
            s.`ended_at`, 
            a.`thumb`, 
            a.`name` AS \'artist\', 
            g.`name` AS \'genre\', 
            st.`name` AS \'stage\'
            FROM `schedules` s
            JOIN `artists` a ON (s.`artist_id` = a.`id` AND a.`deleted_at` IS NULL)
            LEFT OUTER JOIN `stages` st ON (s.`stage_id` = st.`id` AND st.`deleted_at` IS NULL)
            LEFT OUTER JOIN `genres` g ON (a.`genre_id` = g.`id` AND g.`deleted_at` IS NULL)
            WHERE s.`deleted_at` IS NULL
            AND s.`day_id` IN ('.implode(',', array_map(fn($item) => '?', $day_ids)).')
            ORDER BY s.`day_id`, s.`started_at`, st.`capacity` DESC;',
            $day_ids
        );

        // 4. On assigne chaque horaire récupéré à un jour sélectionné.
        foreach($schedules as $schedule) {
            $days[$schedule->day_id]->schedules[] = $schedule;
        }

        // 5. On transforme le tableau de jours avec horaires assignés en un tableau utilisable dans la vue pour faire le rendu comme souhaité.
        $table = [];

        foreach(array_values($days) as $cell => $day) {
            if(count($day->schedules) > count($table)) {
                $table = array_pad($table, count($day->schedules) - count($table), array_pad([], count($days), null));
            }

            foreach ($day->schedules as $row => $schedule) {
                $table[$row][$cell] = $schedule;
            }
        }

        // 6. On ajoute une ligne d'en-tête dans le tableau.
        array_unshift($table, array_values($days));

        // 7. On retourne ce tableau formaté.
        return $table;
    }
}
