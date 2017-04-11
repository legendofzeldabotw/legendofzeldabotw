<?php 
// Setting variables enemies no value
$nameEnemy = $descriptionEnemy = $healthEnemy = $dropsEnemy = $pictureEnemy = NULL;
$nameEnemyErr = $descriptionEnemyErr = $healthEnemyErr = $dropsEnemyErr = NULL;
// Setting variables items no value
$nameItem = $descriptionItem = $healingItem = $pictureItem = NULL;
$nameItemErr = $descriptionItemErr = $healingItemErr = NULL;


if(isset($_GET['action']))
{   
    
          
    $action = $_GET['action'];

        switch($action)
        {
            // Clicked on sub menu 'Enemies'
            case 'enemies':
                    // If Add Enemy form is filled in
                    if (isset($_POST['Add']))
                    {
                        // Getting variables from te form 
                        $nameEnemy = $_POST['NameEnemy'];
                        $descriptionEnemy = $_POST['DescriptionEnemy'];
                        $healthEnemy = $_POST['HealthEnemy'];
                        $dropsEnemy = $_POST['DropsEnemy'];
                        $pictureEnemy = $_POST['PictureEnemy'];
                        
                        // Setting errors to none
                        $checkOnErrors = false;
                        
                        // Cecking for errors
                        if(empty($nameEnemy))
                        {
                            $checkOnErrors = true;
                            $nameEnemyErr = "Dit veld is verplicht";
                        }
                        if(empty($descriptionEnemy))
                        {
                            $checkOnErrors = true;
                            $descriptionEnemyErr = "Dit veld is verplicht";
                        }
                        if(empty($healthEnemy))
                        {
                            $checkOnErrors = true;
                            $healthEnemyErr = "Dit veld is verplicht";
                        }
                        if(empty($dropsEnemy))
                        {
                            $checkOnErrors = true;
                            $dropsEnemyErr = "Dit veld is verplicht";
                        }
                        
                        
                        // If checkonerrors is true reload form
                        if($checkOnErrors)
                        {
                            require('./Forms/AddFormEnemies.php');
                        }
                        else
                        {
                            //ADD VARIABLES TO DATABASE
                        }
                        
                    }
                    else
                    {
                        require('./Forms/AddFormEnemies.php');
                    }
                break;
            // Clicked on sub menu 'Items'  
            case 'items':
                    // If Add Item form is filled in
                    if (isset($_POST['Add']))
                    {
                        // Getting variables from the form
                        $nameItem = $_POST['NameItem'];
                        $descriptionItem = $_POST['DescriptionItem'];
                        $healingItem = $_POST['HealingItem'];
                        $pictureItem = $_POST['PictureItem'];
                        
                        // Setting errors to none
                        $checkOnErrors = false;
                        
                        // Checking for errors
                        if(empty($nameItem))
                        {
                            $checkOnErrors = true;
                            $nameItemErr = "Dit veld is verplicht";
                        }
                        if(empty($descriptionItem))
                        {
                            $checkOnErrors = true;
                            $descriptionItemErr = "Dit veld is verplicht";
                        }
                        if(empty($healingItem))
                        {
                            $checkOnErrors = true;
                            $healingItemErr = "Dit veld is verplicht";
                        }
                        
                        // If checkonerrors is true reload form
                        if($checkOnErrors)
                        {
                            require('./Forms/AddFormItems.php');
                        }
                        else
                        {
                            //ADD VARIABLES TO DATABASE
                            $parameters = array(':nameitem'=>$nameItem,
                                                ':descriptionitem'=>$decriptionItem,
                                                ':healingitem'=>$healingItem,
                                                ':pictureitem'=>$pictureItem);
                            //$sth = $pdo->prepare('INSERT INTO')
                        }
                        
                    }
                    else
                    {
                        require('./Forms/AddFormItems.php');
                    }
                break;
        }   
}
else
{
    
}
?>