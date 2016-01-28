<?php

$pdo = new PDO('mysql:host=localhost;dbname=vitamins', 'root', 'root');

require_once('vitamins.php');

$table = new Vitamins($pdo);

$vitamnins = $table->getAll(); ?>

<?php foreach($vitamins as $vitamnin):  ?>   
    <h2><?php $vitamin['name']; ?></h2>
<?php endforeach; ?>