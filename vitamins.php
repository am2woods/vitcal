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

	/*
	 * This method will run the query when called
	 */
    public function getData($name) {
  		$nameEscaped = $db->quote($name);
  		$sql = "SELECT 'v'.'name', 'f'.'name', 'p'.'grams', 'p'.'percentage', 'i'.'path' " .
					"FROM 'vitamins' 'v' JOIN 'percentage' 'p' ON 'v'.'id' = 'p'.'vitamin_id' " .
						"JOIN 'food' 'f' ON 'f'.'id' = 'p'.'food_id' " .
						"JOIN 'images' 'i' ON 'i'.'id' = 'f'.'image_id' " .
					"WHERE 'v'.'name' = {$nameEscaped}";

  		return $this->db->query($sql);
	}
}

