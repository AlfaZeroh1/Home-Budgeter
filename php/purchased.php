<?php
include "DB.php";

$obj = (object)$_POST;
$ob = (object)$_GET;
$response = '';

$query = "UPDATE products SET  status = '$obj->status' WHERE id='$obj->id'";
if($connection->query($query)){
    $response = 'Success';
}else{
    $response = 'Failure';
}

die($response);
?>
