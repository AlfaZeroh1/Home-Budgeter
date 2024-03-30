<?php
include "DB.php";

$obj = (object)$_POST;
$response = [];

$response['status']=501;
$response['msg']="Did not Execute command";
if(isset($obj->id) && isset($obj->type)){
    $query = "UPDATE products SET type='$obj->type' WHERE id='$obj->id' ";
    if($connection->query($query)){
        $response['status']=200;
        $response['msg']="$obj->name changed to type $obj->type";
    }
    else{
        $response['status']=500;
        $response['msg']="Error! Query Execution Error";
    }
}
die(json_encode($response));

?>

