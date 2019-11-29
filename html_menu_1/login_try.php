<?php
    session_start();
    include "../connect.php";

    $st_email = $_POST["email"];
    $st_password = $_POST["password"];

    $qry = " SELECT * FROM students WHERE st_email = '$st_email' ";

    if($con->query($qry))
    {
        echo "Query Ru success";
    }
    else
    {
        echo "Query didn't execute";
    }

    $res = $con->query($qry);
    $msg="";

    if($res->num_rows > 0)
    {   //admin exists
        $row = $res->fetch_assoc();

        if($row["st_password"] == $st_password)
        {   //password is correct
            $_SESSION["student"] = $row["st_name"];
            echo $_SESSION["student"];
            header("Location:index.php");    //give admin the access to dashboard
        }
        else
        {   //password is incorrect
            echo "Incorrect Password";
//            $msg = "Invalid Password";
            //header("Location:login.html?Message=$msg");
        }
    }
    else
    {   //admin does not exist
        echo "Student does not exist";
//        $msg = " ".$st_email." does not exist";
        //header("Location:login.html?Message=$msg");
    }

?>