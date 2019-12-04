<?php
    include "../connect.php";

    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $telephone = $_POST["telephone"];
    $age = $_POST["age"];
    $education_apply = $_POST["education_apply"];
    $gender = $_POST["gender"];
    $address = $_POST["address"];
    $city = $_POST["city"];
    $zip_code = $_POST["zip_code"];
    $country = $_POST["country"];
    $preferences = $_POST["preferences"];
    $additional_message = $_POST["additional_message"];


    /*echo $firstname;
    echo "<br>";
    echo $lastname;
    echo "<br>";
    echo $email;
    echo "<br>";
    echo $telephone;
    echo "<br>";
    echo $age;
    echo "<br>";
    echo $education_apply;
    echo "<br>";
    echo $gender;
    echo "<br>";
    echo $address;
    echo "<br>";
    echo $city;
    echo "<br>";
    echo $zip_code;
    echo "<br>";
    echo $country;
    echo "<br>";
    echo $preferences;
    echo "<br>";
    echo $additional_message;
    echo "<br>";*/

    $qry = " INSERT INTO admission(firstname, lastname, email, telephone, age, education_apply, gender, address, city, zip_code, country, preferences, additional_message) 
            VALUES('$firstname', '$lastname', '$email', '$telephone', $age, '$education_apply', '$gender', '$address', '$city', '$zip_code', '$country', '$preferences', '$additional_message') ";

    if($con->query($qry))
    {
        echo "Added into Database";
        $msg = "Successfully got admission";
        header("Location:admission.php?Message=$msg");
    }
    else
    {
        echo "Not Added";
        echo $con->error;
        echo $con->errno;
    }

?>