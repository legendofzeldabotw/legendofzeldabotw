<?php

session_start();
require ('./Modules/Functions.php');

$pdo = ConnectDB();

?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Style/HomeStyle.css">
        <title></title>
    </head>
    <body>
        <main>
            <?php
            
            if(!empty($_GET["PaginaNr"]))
            {
                $paginaNr = $_GET['PaginaNr'];
            }
            else
            {
                $paginaNr = null;
            }
            
            switch($paginaNr)
            {
                case 0: include('./Modules/Home.php');
                        break;
                case 1: include('./Modules/Test.php');
                        break;
            }
            
            ?>
        </main>
    </body>
</html>