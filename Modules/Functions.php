<?php

/*Connect to database*/
function ConnectDB()
{
    try
    {
        $pdo = new PDO("mysql:host=localhost;dbname=legendofzeldabotw",'root','');
    }
    catch(PDOException $e)
    {
        echo $e->getMessage();
    }
    return $pdo;
}

/*Check if the image is available*/
function ImageCheck($row)
{
    $imagePath = 'Images/Items/';
    $imageFile = $row['Name'];
    $imagePathEnd = '.png';
    
    $imageResult = $imagePath . $imageFile . $imagePathEnd;
    
    if(file_exists($imageResult))
    {
        return $row ['Name'];
    }
    else
    {
        return 'PlaceHolder';
    }
}

?>