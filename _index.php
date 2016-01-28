<?php
    $pdo = new PDO('mysql:host=localhost;dbname=vitamins', 'root', 'root');

    require_once('vitamins.php');

    $table = new Vitamins($pdo);

    $vitamnins = $table->getAll();
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Vitamin Calculator</title>

    <!-- Bootstrap core CSS -->
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS-->
    <link href="./assets/css/custom-styles.css" rel="stylesheet">
  </head>

  <body>

    <!--fixed navigation bar-->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
          <link href="assets/css/custom-styles.css" rel="stylesheet" type="text/css"/>

        <div class="mobileHide">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">HOME</a></li>
            <li><a href="./pages/about_page.html">ABOUT</a></li>
          </ul>
        </div>

      </div><!--/.nav-collapse -->
    </nav>

    <!--standard screen container-->
    <div class="containerH">

      <div class="starter-template">
        <h1 class="vitcal">VITAMIN CALCULATOR</h1>

        <!--dropdown button-->
        <div class="dropdown">
          <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
            START HERE
            <span class="caret"></span>
          </button>

          <!--vitamin list-->
        <ul>
        <?php foreach($vitamins as $vitamnin):  ?>   
            <li data-vitamin-id=<?php $vitamnin['id'] ?>><?php $vitamin['name']; ?></li>
        <?php endforeach; ?>
        </ul><!--vitamin list end-->

        </div><!--dropdwon button end-->

        <div class="containerL">
        </div>

      </div><!--starter template end-->

    </div><!--standard screen container end -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>