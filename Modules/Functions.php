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

/*Translates the amount of hearts to text*/
//maybe add something to say 1,25 hearts instead of 1,25 heart
function HeartsCheck($row)
{
    if($row ['Healing'] !== null)
    {
        if($row ['Healing'] > 1)
        {
            return "Heals: " . $row ['Healing'] . " hearts";
        }
        else
        {
            return "Heals: " . $row ['Healing'] . " heart";
        }
        
    }
    else
    {
        return null;
    }
}

?>