<?php
include "DB.php";

$obj = (object)$_POST;
$response = [];

$response['status']=501;
$response['msg']="Did not Execute command";
if(isset($obj->id) && isset($obj->phase) && $obj->phase>0){
    $query = "UPDATE products SET phase='$obj->phase' WHERE id='$obj->id' ";
    if($connection->query($query)){
        // echo "<script>alert('Success! Product added');window.location.href='../index.php'</script>";
        $response['status']=200;
        $response['msg']="$obj->name moved to phase $obj->phase";
    }
    else{
        $response['status']=500;
        $response['msg']="Error! Query Execution Error";
    }
}
die(json_encode($response));

?>

