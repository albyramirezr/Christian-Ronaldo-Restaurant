<?php
require('connection.php');

function getClients(){
    global $conn;
    $getClientSQL = "SELECT * FROM tclientes";
    $resultClient = $conn->query($getClientSQL);
    return $resultClient;
}
