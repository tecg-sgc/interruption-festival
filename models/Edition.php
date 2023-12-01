<?php

class Edition extends BaseModel
{
    public function current()
    {
        return $this->first(
            'SELECT * FROM `editions` WHERE `current` = 1 LIMIT 1;'
        );
    }
}
