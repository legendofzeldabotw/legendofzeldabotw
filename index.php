<?php

session_start();
require ('./Modules/Functions.php');

$pdo = ConnectDB();

?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Style/HomeStyle.css">
        <meta charset="utf-8">
        <title></title>
    </head>
    <body>
        <div class="IndexPage">
            <main>
                <?php

                if(!empty($_GET["PageNr"]))
                {
                    $pageNr = $_GET['PageNr'];
                }
                else
                {
                    $pageNr = null;
                }

                switch($pageNr)
                {
                    case 1: require('./Modules/Add.php');
                            break;
                    case 2: require('./Modules/Edit.php');
                            break;
                    case 3: require('./Modules/Delete.php');
                            break;
                    default: require('./Modules/Home.php');
                            break;
                }

                ?>
            </main>
        </div>
    </body>
</html>