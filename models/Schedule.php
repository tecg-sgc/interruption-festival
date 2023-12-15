<?php

class Schedule extends BaseModel
{
    public function homepageTable($edition)
    {
        // 1. Récupérer les jours concernés par cette édition
        $days = Day::getEditionDays($edition);

        // 2. Extraire les day_id récupérés au point 1
        $day_ids = array_keys($days);

        // 3. Exécuter la requête sur la table schedules pour les jours récupérés
        $schedules = $this->get('SELECT s.day_id,
            s.started_at,
            s.ended_at,
            a.thumb,
            a.name AS \'artist\',
            g.name AS \'genre\',
            st.name AS \'stage\'
            FROM `schedules` s
            JOIN `artists` a ON s.artist_id = a.id
            LEFT OUTER JOIN `genres` g ON (a.genre_id = g.id AND g.deleted_at IS NULL)
            LEFT OUTER JOIN `stages` st ON (s.stage_id = st.id AND st.deleted_at IS NULL)
            WHERE s.deleted_at IS NULL
            AND a.deleted_at IS NULL
            AND s.day_id IN ('.implode(',', array_map(fn($item) => '?', $day_ids)).')
            ORDER BY s.day_id, s.started_at, st.capacity DESC;',
            $day_ids
        );

        // 4. Assigner les schedules récupérées au jour qui les concernent
        foreach($schedules as $schedule) {
            $days[$schedule->day_id]->schedules[] = $schedule;
        }

        // 5. Formater la structure de tableau affichable
        $table = [];

        foreach(array_values($days) as $index => $day) {
            if(count($table) < count($day->schedules)) {
                $table = array_pad($table, count($day->schedules) - count($table), array_pad([], count($days), null));
            }

            foreach($day->schedules as $row => $schedule) {
                $table[$row][$index] = $schedule;
            }
        }

        // 6. Ajouter les en-têtes du tableau
        array_unshift($table, array_values($days));
        
        // 7. Retourner le résultat
        return $table;
    }
}
