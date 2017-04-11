<?php

$sth = $pdo->prepare('select * from items');
$sth->execute();

while($row = $sth->fetch())
{
    //make an IF statement to add a default picture
    echo "<div class='ItemBoxes'>";
        echo "<img src='Images/" . ImageCheck($row) . ".png' class='ImageBoxes'>";
        echo $row ['Name'];
    echo "</div>";
}

?>