<?php
include "DB.php";

$obj = (object)$_POST;

if(isset($obj->action) && $obj->action=="add product"){
    $query = "INSERT INTO products(name,type,quantity,unit_price,room,priority,phase,remarks) VALUES('$obj->name','$obj->type','$obj->quantity','$obj->unit_price','$obj->room','$obj->priority','$obj->phase','$obj->remarks')";
    if($connection->query($query)){
        // echo "<script>alert('Success! Product added');window.location.href='../index.php'</script>";
        echo "<script>alert('Success! Product added');</script>";
    }else{
        echo "<script>alert('Error! Failed to add Product')</script>";
    }
}   

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script> 
    <!-- End of Jquery -->

    <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <!-- End of Bootstrap -->
    
    <!--  Data tables-->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.css" />
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.js"></script>
    <!--  End of Data tables-->

    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <form action="" method="post">
        <div class="ipt">
            <input type="text" placeholder="name ... " class="form-control" name="name" id="name">
        </div>
        <div class="ipt">
            <input type="text" placeholder="type ... " class="form-control" name="type" id="type">
        </div>
        <div class="ipt">
            <input type="text" placeholder="quantity ... " class="form-control" name="quantity" id="quantity">
        </div>
        <div class="ipt">
            <input type="text" placeholder="unit_price ... " class="form-control" name="unit_price" id="unit_price">
        </div>
        <div class="ipt">
            <input type="text" placeholder="room ... " class="form-control" name="room" id="room">
        </div>
        <div class="ipt">
            <input type="text" placeholder="priority ... , 0 being highest" class="form-control" name="priority" id="priority">
        </div>
        <div class="ipt">
            <input type="text" placeholder="phase ... " class="form-control" name="phase" id="phase">
        </div>
        <div class="ipt">
            <textarea placeholder="remarks ... " class="form-control" name="remarks" id="remarks" rows="3"></textarea>
        </div>
        <div class="ipt">
            <input type="submit" name="action" value="add product" class="btn btn-dark">
        </div>
    </form>    
</body>
</html>
