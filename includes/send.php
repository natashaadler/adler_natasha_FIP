<?php

//TODO: Takes care of the form submission 
//1. Check the submission --> validate the data (make sure theres no problems with the submission, is there "non-mailable items")
//2. prepare your e-mail(prepare its sending format)
//3. Send out the e-mail(send out the package)
//4. It returns proper info in JSON format (becasue in the js that is what format the function is expecting to recieve as the feedback.)
    //a. what is AJAX
    //b. What is JSON
    //c. How to build JASON (in PHP)
 

header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json; charset=UTF-8');
$results = [];
$visitor_name = '';
$visitor_email = '';

//1. Check the submission --> validate the data (make sure theres no problems with the submission, is there "non-mailable items")
// we are going to acces one pair of values in the associative array. 
// How are we going to access the data Submission?

if (isset ($_POST['firstname'])){ 
    $visitor_name = filter_var($_POST['firstname'], FILTER_SANITIZE_STRING); 
}

if (isset ($_POST['lastname'])){ 
    $visitor_name .= ' ' .filter_var($_POST['lastname'], FILTER_SANITIZE_STRING); 
}

$results['name'] = $visitor_name;

echo json_encode($results);

