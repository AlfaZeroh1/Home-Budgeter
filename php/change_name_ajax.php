<?php
include "DB.php";

$obj = (object)$_POST;
$response = [];

$response['status']=501;
$response['msg']="Did not Execute command";
if(isset($obj->id) && isset($obj->name_change)){
    $query = "UPDATE products SET name='$obj->name_change' WHERE id='$obj->id' ";
    if($connection->query($query)){
        $response['status']=200;
        $response['msg']="$obj->name changed to $obj->name_change";
    }
    else{
        $response['status']=500;
        $response['msg']="Error! Query Execution Error";
    }
}
die(json_encode($response));

?>

