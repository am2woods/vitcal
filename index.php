<?php

    $pdo = new PDO('mysql:host=localhost;dbname=vitamins', 'root', 'root');

    require_once('vitamins.php');

    $table = new Vitamins($pdo);

    $vitamins = $table->getAll();
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

        <div id="dd" class="wrapper-dropdown">
            <div>
                <span>START HERE</span>
                <img src='./assets/images/arrowD.png' alt='caret'>
            </div>
          <ul class="dropdown">
            <li>VITAMIN A</li>
            <li>VITAMIN B6</li>
            <li>VITAMIN B12</li>
            <li>VITAMIN C</li>
            <li>VITAMIN D</li>
          </ul>
        </div>

        <!--Lower page styles-->
        <div class="containerL">
          <div class='find'>
            <img src="./assets/images/Find_Logo.png">
            <h1 class="lower">FIND</h1>
            <p>Quickly see which fruits and vegetables have certain vitamins and minerals</p>
          </div>
          
          <div class="values">
            <img src="./assets/images/Scale_Logo.png">
            <h1 class="lower">VALUES</h1>
            <p>Percentage daily values listed for all vitamins and minerals</p>
          </div>

          <div class="acc">
            <img src="./assets/images/Target_Logo.png">
            <h1 class="lower">ACCURACY</h1>
            <p>Accurate percentages per serving</p>
          </div>

        </div>
        <!--Lower page styles end-->

      </div><!--starter template end-->

    </div><!--standard screen container end -->

    <div class="transbox" style="color:#000;">
         I'm a box
    </div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <script>
    $(function() {
      var trans = $('.transbox');
      var lower = $('.containerL');
      $('.dropdown li').click(function(e) {
          e.preventDefault();
            var name = $(e.target).html();

          $.get('/vitamins/data.php', { name: name }, function(data) {
              console.log(data);

              trans.html(data);
              trans.show();
          });


            lower.hide();
            console.log('clicked');
            console.log(trans, lower);
      });
    });
    </script>
    <script src='./assets/js/dropdownScript.js'></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>