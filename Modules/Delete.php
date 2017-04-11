<?php 


if(isset($_GET['action']))
{   
    
          
    $action = $_GET['action'];

        switch($action)
        {

            case 'enemies':
                
                    if (isset($_POST['Delete']))
                    {

                    }
                    else
                    {
                        require('./Forms/DeleteFormEnemies.php');
                    }
                break;
            case 'items':
                    if (isset($_POST['Delete']))
                    {

                    }
                    else
                    {
                        require('./Forms/DeleteFormItems.php');
                    }
                break;
        }   
}
else
{
    
}

?>