<?php
    require "config.php";

    if(isset($_POST['submit'])){
        $nama = $_POST['nama'];
        $tall = $_POST['tall'];
        $grande = $_POST['grande'];
        $venti = $_POST['venti'];
        $query = mysqli_query($db,"INSERT INTO menu (nama_menu,tall,grande,venti) VALUES ('$nama','$tall','$grande','$venti')");
        if($query){
            header("Location:admin.php");
        } else {
            echo "Add Error";
        }
    }
?>