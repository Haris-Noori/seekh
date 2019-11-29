<?php

    $server = "localhost";
    $user = "root";
    $pass = "";
    $dbname = "seekh_db";

    $con = new MySQLi($server, $user, $pass, $dbname);

    if($con->connect_error)
    {
        echo "<script>alert('Not connected!')</script>";
        echo "Error: " .$con->connect_error;
        echo $con->errno;
    }
    else
    {
//        echo "Successfully connected to database";
    }

?>