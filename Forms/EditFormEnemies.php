<form method="post" action="">
<table>
    <tr>
        <td><label>Name:</label></td>
        <td><input type="text" name="NameEnemy" value="<?php echo $nameEnemy; ?>"><?php echo $nameEnemyErr; ?></td>
    </tr>
    <tr>
        <td><label>Description:</label></td>
        <td><input type="text" name="DescriptionEnemy" value="<?php echo $descriptionEnemy; ?>"><?php echo $descriptionEnemyErr; ?></td>
    </tr>
    <tr>
        <td><label>Health:</label></td>
        <td><input type="text" name="HealthEnemy" value="<?php echo $healthEnemy; ?>"><?php echo $healthEnemyErr; ?></td>
    </tr>
    <tr>
        <td><label>Drops:</label></td>
        <td><input type="text" name="DropsEnemy" value="<?php echo $dropsEnemy; ?>"><?php echo $dropsEnemyErr; ?></td>
    </tr>
    <tr>
        <td><label>Picture:</label></td>
        <td><input type="file" id="Picture" name="PictureEnemy" value="PictureEnemy"/>WARNING! MAKE SURE YOU INCLUDE A PICTURE</td>
    </tr>
    <tr>
        <td><input type="submit" name="Edit" value="Edit"></td>
    </tr>
</table>
</form>