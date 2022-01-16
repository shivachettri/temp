<?php
include_once 'db.php';


$sms = explode('#', $_POST['sms']);
$sql = "
    INSERT INTO sms
    (district, form, numerator, denominator, indicator)
    VALUES(
        '".$sms[0]."',
        '".$sms[1]."',
        '".$sms[2]."',        
        '".$sms[3]."',        
        '".($sms[2] / $sms[3])."'
    )
";

if ($conn->query($sql) === TRUE) {
  echo "Record added!";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
return;
$conn->close();
?>