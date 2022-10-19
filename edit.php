<?php
require "config.php";
if(isset($_GET['id'])){
    $query = mysqli_query($db,"SELECT * FROM menu WHERE id=$_GET[id]");
    $result = mysqli_fetch_assoc($query);
    $nama = $result['nama_menu'];
    $regular = $result['regular'];
    $large = $result['large'];
}

if(isset($_POST['submit'])){
    $query = mysqli_query($db,"UPDATE menu SET nama_menu='$_POST[nama]',regular='$_POST[regular]',large='$_POST[large]' WHERE id=$_GET[id]");
    if($query){
        header("Location:admin.php");
    } else {
        echo "Update Failed";
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Menu</title>
    <link rel="stylesheet" href="styleAdmin.css">
</head>
<body>
        <h1 class="judul">STARBUCKS</h1>
    
    <div class="form-class">
        <h3>Edit Menu</h3><br><br>
        <form action="" method="post">
            <label for="">Nama Menu</label><br>
            <input type="text" name="nama" class="form-text" value='<?=$nama?>'><br>
            
            <label for="">Regular</label><br>
            <input type="text" name="regular" class="form-text" value='<?=$regular?>'><br>
            
            <label for="">Large</label><br>
            <input type="text" name="large" class="form-text" value='<?=$large?>'><br>
        
            <input type="submit" name="submit" value="Kirim" class="btn-submit">
        </form>
    </div>

</body>
</html>