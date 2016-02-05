<?php

if(isset($_GET['name'])) {
	require '../db/vitamins.php';

	$name =  ($_GET['name']);

	$data = mysql_query("
			SELECT 'v'.'name', 'f'.'name', 'p'.'grams', 
					'p'.'percentage', 'i'.'path'
			FROM 'vitamins' 'v' JOIN 'percentage' 'p' ON 'v'.'id' = 'p'.'vitamin_id'
								JOIN 'food' 'f' ON 'f'.'id' = 'p'.'food_id'
								JOIN 'images' 'i' ON 'i'.'id' = 'f'.'image_id'
			WHERE 'v'.'name' = '". $name ."'

		");
}

echo $data['

']
