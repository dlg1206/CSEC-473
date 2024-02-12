BLAHALDBALSDBA
<?php
error_reporting(E_ALL);
?>
<?php
echo "HELLO";
$conn = mysqli_connect("192.168.2.6", "melody", "password", "account");

$query = "SELECT * FROM User WHERE username = 'alice' and password = '' OR 1 = 1";
 
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
?>
