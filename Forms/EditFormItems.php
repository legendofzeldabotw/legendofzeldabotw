<form method="post" action="">
<table>
    <tr>
        <td><label>Name:</label></td>
        <td><input type="text" name="NameItem" value="<?php echo $nameItem; ?>"><?php echo $nameItemErr; ?></td>
    </tr>
    <tr>
        <td><label>Description:</label></td>
        <td><input type="text" name="DescriptionItem" value="<?php echo $descriptionItem; ?>"><?php echo $descriptionItemErr; ?></td>
    </tr>
    <tr>
        <td><label>Healing:</label></td>
        <td><input type="text" name="HealingItem" value="<?php echo $healingItem; ?>"><?php echo $healingItemErr; ?></td>
    </tr>
    <tr>
        <td><label>Picture:</label></td>
        <td><input type="file" id="Picture" name="PictureItem" value="PictureItem"/>WARNING! MAKE SURE YOU INCLUDE A PICTURE</td>
    </tr>
    <tr>
        <td><input type="submit" name="Edit" value="Edit"></td>
    </tr>
</table>
</form>