<?php

$id = filter_input(GET, 'vitamin_id', FILTER_VALIDATE_INT);

$db = new PDO('mysql:host=localhost;dbname=vitamins', 'root', 'root');

$results = $db->query('SELECT * FROM percentage p
LEFT JOIN foods f ON p.food_id = f.id
WHERE p.vitamin_id = 8');







