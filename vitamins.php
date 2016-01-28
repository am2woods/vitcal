<?php

class Vitamins {
    
    protected $db;
    
    public function __construct(PDO $db) {
        $this->db = $db;
    }
    
    public function getAll()
    {
        return $this->db->query('SELECT * FROM vitamins');
    }
}

