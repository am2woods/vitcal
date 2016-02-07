<?php

if(!isset($_GET['name'])) die('A vitamin name is required.');

	require '../vitamins.php';

	/*
	 * Make the connection to the database
	 */
	$pdo = new PDO('mysql:host=localhost;dbname=vitamins', 'root', 'root');

	/*
	 * Instantiate a new Vitamins instance
	 */
	$table = new Vitamins($pdo);

	//get the name from the query parameter
	$param = $_GET['name'];

	/*
	 * Call our method which containers the query
	 */
	$data = $table->getData($param);


	/*
	 * Loop through the data and output your markup
	 */
?>
<div>
	<?php while($data): ?>
		<h3><?php echo $data['name']; ?></h3>
	<?php endWhile; ?>
</div>






