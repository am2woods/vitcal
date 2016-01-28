<?php

$name = $_GET['name'];

$data = [
  'VITAMIN B6' => 'B6 is good for you',
    'VITAMIN A' => 'A is better',
];

echo $data[$name];