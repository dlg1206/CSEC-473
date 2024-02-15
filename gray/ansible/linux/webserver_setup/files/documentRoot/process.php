<?php

$conn = mysqli_connect("192.168.3.14", "GrayWebserver", "password1", "karoake");

$username = $_POST['username'];
$password = $_POST['password'];


$query = "SELECT * FROM Credentials WHERE username = '$username' and password = '$password'";

$result=mysqli_query($conn,$query);

$rowCount = mysqli_num_rows($result);

if ($rowCount > 0)
{
	session_start();
	$_SESSION['loggedin'] = true;
	header("Location: welcome.php");
	exit; 
 
 }// end if
else {
            // Invalid password, display error message
            echo "Invalid credentials. Please try again.";
       }

mysqli_close($conn);
?>
