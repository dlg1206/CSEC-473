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
    <title>Welcome Page</title>
</head>
<body>
    <h1>Welcome</h1>
    <p>You are logged in! Here are the kareoke songs:</p>
<h1><?php	
$conn = mysqli_connect("192.168.2.6", "melody", "password", "account");
$query = "SELECT * FROM User";
if ($result=mysqli_query($conn,$query))
{
  // Fetch one and one row
  while ($row=mysqli_fetch_row($result))
    {
        echo " Username :".$row[0]." , ";
        echo " Password : ".$row[1];
        echo  nl2br (" \n ");
    }//end while
  // Free result set
  mysqli_free_result($result);
}// end if
mysqli_close($conn);
?></h1>
</body>
</html>
