<?php

$sth = $pdo->prepare('select * from items');
$sth->execute();
//$row = $sth->fetch();
$i = 0;
echo "<table class='centered'>";
    echo "<tr>";
    while ($row = $sth->fetch())
    {
        echo "<td>";
            echo "<div class='ItemBoxes'>";
                echo "<img src='Images/Items/" . ImageCheck($row) . ".png' class='ImageBoxes'>";
                echo "<hr />";
                echo "Name: " . $row ['Name'] . "<br />";
                echo HeartsCheck($row);
            echo "</div>";
        echo "</td>";
        $i++;
        
        if($i == 5)
        {
            $i = 0;
            echo "</tr>";
            echo "<tr>";
        }
    }
echo "</table>";

//needs an extra counter for every td it puts into an tr becouse of excess and last data not reached

/*
newRow:
    while ($sth->fetch())
    {
    
    echo "<tr>";
        
        for($i=0; $i <= 4; $i++)
        {
        $row = $sth->fetch();
        echo "<td>";
            echo "<div class='ItemBoxes'>";
                echo "<img src='Images/Items/" . ImageCheck($row) . ".png' class='ImageBoxes'>";
                echo $row ['Name'];
            echo "</div>";
        echo "</td>";
        }
    
    echo "</tr>";
    goto newRow;
    }
*/

?>