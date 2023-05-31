<?php

$host = "localhost";
$user = "root";
$database = "karate";
$connection = mysqli_connect($host, $user, '', $database);
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

function insert_student($connection, $name, $dob, $sex, $bloodgrp, $education, $profession, $father, $mothers, $address, $city, $pincode, $mobile, $admitted, $paidon, $introby) {
    $name = mysqli_real_escape_string($connection, $name);
    $dob = mysqli_real_escape_string($connection, $dob);
    $sex = mysqli_real_escape_string($connection, $sex);
    $bloodgrp = mysqli_real_escape_string($connection, $bloodgrp);
    $education = mysqli_real_escape_string($connection, $education);
    $profession = mysqli_real_escape_string($connection, $profession);
    $father = mysqli_real_escape_string($connection, $father);
    $mothers = mysqli_real_escape_string($connection, $mothers);
    $address = mysqli_real_escape_string($connection, $address);
    $city = mysqli_real_escape_string($connection, $city);
    $pincode = mysqli_real_escape_string($connection, $pincode);
    $mobile = mysqli_real_escape_string($connection, $mobile);
    $admitted = mysqli_real_escape_string($connection, $admitted);
    $paidon = mysqli_real_escape_string($connection, $paidon);
    $introby = mysqli_real_escape_string($connection, $introby);
    
    /* Prepare Paid Till for Database */
    $ex_paidon = explode('-',$paidon); //DD-MM-YYY
    $paid_till =  ltrim($ex_paidon[1], '0') . "," . $ex_paidon[2]; //Expected: MM,YYYY : But, If MM is "01", it will be become "1".
 
    $query = "INSERT INTO student (branch_id,name, dob, sex, blood_group, education_qualification, profession, father_name, mother_name, guardian_name, address, city, pincode, contact_no, email_id,training_shift, kyu_dan, photo, scanned_form, is_admission, paid_till, created_by, account_status, status)
              VALUES              (1,       '$name','$dob','$sex','$bloodgrp','$education','$profession',    '$father',  '$mothers',     '',          '$address', '$city', '$pincode', '$mobile', '',       'a',            '',      '' ,   '',           '1',         '$paid_till',         '1',        '1',        '1')";
    
    if (mysqli_query($connection, $query)) {
        $student_id = mysqli_insert_id($connection);
        echo "Student inserted successfully. Student ID: " . $student_id . "\n";
        
        // Insert admission details into student_admission table
        $admitted_on = date("Y-m-d", strtotime($admitted));
        $admission_fee_paid_on = date("Y-m-d", strtotime($paidon));
        
        $admission_query = "INSERT INTO student_admission (student_id, admitted_on, admission_fee_paid_on, introduced_by, status)
                            VALUES ('$student_id', '$admitted_on', '$admission_fee_paid_on', '$introby', '1')";
        mysqli_query($connection, $admission_query);
        
        echo "Admission details inserted successfully.\n";
    } else {
        echo "Error inserting student: " . mysqli_error($connection) . "\n";
    }
}

$csv_file = fopen("students.csv", "r");
if (!$csv_file) {
    die("Error opening CSV file");
}

// Skip the header row
fgetcsv($csv_file);

while (($row = fgetcsv($csv_file)) !== false) {
    $name = $row[0];
    $dob = str_replace('/', '-', $row[1]);
    $sex = strtolower($row[2]);
    $bloodgrp = $row[3];
    $education = $row[4];
    $profession = $row[5];
    $father = $row[6];
    $mothers = $row[7];
    $address = $row[8];
    $city = $row[9];
    $pincode = $row[10];
    $mobile = $row[11];
    $admitted = $row[12];
    $paidon = $row[13];
    $introby = $row[14];
    
    insert_student($connection, $name, $dob, $sex, $bloodgrp, $education, $profession, $father, $mothers, $address, $city, $pincode, $mobile, $admitted, $paidon, $introby);
}

fclose($csv_file);
mysqli_close($connection);