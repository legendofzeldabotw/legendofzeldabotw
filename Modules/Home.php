<?php

$sth = $pdo->prepare('select * from items');
$sth->execute();

echo "<table>";
    echo "<tr>";

        while($row = $sth->fetch())
        {
            //make an IF statement to add a default picture
            for($i=0;$i==3;$i++)
            {
            echo "<td>";
                echo "<div class='ItemBoxes'>";
                    echo "<img src='Images/Items/" . ImageCheck($row) . ".png' class='ImageBoxes'>";
                    echo $row ['Name'];
                echo "</div>";
            echo "</td>";
            }
        }
    
    echo "</tr>";
echo "</table>";
//for($i,$i=3,$i++)
//$i<count($i)

?>