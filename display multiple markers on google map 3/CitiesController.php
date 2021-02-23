<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "poolgrab";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//echo "Connected successfully";


$citiesDB = $conn->query("select id, city from sell")->fetch_all();
//print_r($cities);
$cities = array();

foreach ($citiesDB as $city){
    array_push($cities, array("id" => $city[0], "city" => $city[1]));
}
echo json_encode($cities);
exit;