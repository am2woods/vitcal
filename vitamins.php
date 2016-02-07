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

    public function getData($_GET['name']) {
  		$name = $db->quote($_GET['name']);
  		$sql = "
			SELECT 'v'.'name', 'f'.'name', 'p'.'grams', 
					'p'.'percentage', 'i'.'path'
			FROM 'vitamins' 'v' JOIN 'percentage' 'p' ON 'v'.'id' = 'p'.'vitamin_id'
								JOIN 'food' 'f' ON 'f'.'id' = 'p'.'food_id'
								JOIN 'images' 'i' ON 'i'.'id' = 'f'.'image_id'
			WHERE 'v'.'name' = '". $name ."'

		";
  		return $this->db->query($sql);
	}
}

