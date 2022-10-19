<?php
    require "config.php";

    if(isset($_POST['submit'])){
        $nama = $_POST['nama'];
        $regular = $_POST['regular'];
        $large = $_POST['large'];
        $query = mysqli_query($db,"INSERT INTO menu (nama_menu,regular,large) VALUES ('$nama','$regular','$large')");
        if($query){
            header("Location:admin.php");
        } else {
            echo "Add Error";
        }
    }
?>