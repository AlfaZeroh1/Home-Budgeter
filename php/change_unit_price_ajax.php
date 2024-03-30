<?php
include "DB.php";

$obj = (object)$_POST;
$response = [];

$response['status']=501;
$response['msg']="Did not Execute command";
if(isset($obj->id) && isset($obj->unit_price) && $obj->unit_price>0){
    $query = "UPDATE products SET unit_price='$obj->unit_price' WHERE id='$obj->id' ";
    if($connection->query($query)){
        // echo "<script>alert('Success! Product added');window.location.href='../index.php'</script>";
        $response['status']=200;
        $obj->unit_price = number_format($obj->unit_price);
        $response['msg']="$obj->name Unit Price updated to Ksh.$obj->unit_price";
    }
    else{
        $response['status']=500;
        $response['msg']="Error! Query Execution Error";
    }
}
die(json_encode($response));

?>

