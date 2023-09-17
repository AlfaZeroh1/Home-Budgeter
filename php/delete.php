<?php
include "DB.php";
$ob = (object)$_GET;

$query = "UPDATE products SET status=2 WHERE id='$ob->id' ";
if($connection->query($query)){
    echo "<script>alert('Success! Product Deleted');window.location.href='../'</script>";
}else{
    echo "<script>alert('Error! Failed to delete product');window.location.href='../'</script>";
}
?>