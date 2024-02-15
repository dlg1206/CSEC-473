<?php

session_start();
if ($_SESSION['loggedin'] !== true) {
    // User is not logged in, redirect to login page
    header("Location: login.html");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Authenticated page Page</title>
    <style>
        /* Add your CSS styles here */
         body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #1c1425;
        }

        header {
            background-color: #1c1425;
            color: #00000;
            padding: 1em;
            text-align: center;
        }
    </style>
</head>
<header>
    <h1 style="color:#c28cff;font-family:Verdana;font-size:50px" >Welcome</h1>
    <p style="color:#c28cff;font-family:Luminari;font-style:italic;font-size:21px" >You are logged in! Here are the karaoke songs:</p>
</header>
    
<body>
<p style="color:#e5c6ef;font-family:Georgia;font-size:19px"><?php	
$conn = mysqli_connect("192.168.3.14", "GrayWebserver", "password1", "karoake");
$query = "SELECT * FROM Songs";
if ($result=mysqli_query($conn,$query))
{
  // Fetch one and one row
  while ($row=mysqli_fetch_row($result))
    {
        echo " - Title :".$row[0]." , ";
        echo " Artist : ".$row[1]." , ";
        echo " Genre : ".$row[2];
        echo  nl2br (" \n ");
    }//end while
  // Free result set
  mysqli_free_result($result);
}// end if
mysqli_close($conn);
?></p>
</body>
</html>
