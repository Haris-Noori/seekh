<?php
    include "../connect.php";
    $course_name = $_GET["course"];
    $student = $_GET["student"];

    $qry = " INSERT INTO enrolled_students(course_title, student_name) VALUES('$course_name', '$student') ";

    if($con->query($qry))
    {
        $msg = "You are Successfully enrolled";
        header("Location:courses-list.php?Message=$msg");
    }
    else
    {
        $msg = "Not enrolled";
        header("Location:courses-list.php?Message=$msg");
    }

?>