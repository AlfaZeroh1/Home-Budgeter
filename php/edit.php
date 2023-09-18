<?php
include "DB.php";

$obj = (object)$_POST;
$ob = (object)$_GET;

if(isset($obj->action) && $obj->action=="edit product" && !empty($obj->name) && !empty($obj->quantity) && !empty($obj->type) && !empty($obj->unit_price) && !empty($obj->room) && !empty($obj->phase) && !empty($obj->priority) ){
    $query = "UPDATE products SET 
                        name='$obj->name',
                        type='$obj->type',
                        quantity='$obj->quantity',
                        unit_price='$obj->unit_price',
                        room='$obj->room',
                        priority='$obj->priority',
                        phase='$obj->phase',
                        remarks='$obj->remarks'
                WHERE id='$obj->id'";
    if($connection->query($query)){
        // echo "<script>alert('Success! Product added');window.location.href='../index.php'</script>";
        echo "<script>alert('Success! Product Edited');window.location.href='../'</script>";
    }else{
        echo "<script>alert('Error! Failed to edit Product')</script>";
    }
}
else{
    echo "<script>alert('Error! Name, quantity, type,unit price, room, phase and priority must be filled')</script>";
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
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
    <div class="tb_item">
        <div onclick=" window.location.href='../index.php' " class="btn btn-danger" >Home</div>
    </div>
    <?php
        $product_query = "SELECT * FROM products WHERE id='$ob->id' ";
        $product_res = $connection->query($product_query);
        $product_obj = $product_res->fetchAll(PDO::FETCH_OBJ);
        $product = $product_obj[0];
        // print_r($product);
    ?>
    <form action="" method="post">
        <div class="ipt">
            <input type="text" placeholder="name ... " class="form-control" name="name" id="name" value="<?php echo $product->name ; ?>" >
            <input type="hidden" name="id" id="id" value="<?php echo $ob->id; ?>">
        </div>
        <div class="ipt">
            <input type="text" placeholder="type ... " class="form-control" name="type" id="type" value="<?php echo $product->type ; ?>" >
        </div>
        <div class="ipt">
            <input type="text" placeholder="quantity ... " class="form-control" name="quantity" id="quantity" value="<?php echo $product->quantity ; ?>" >
        </div>
        <div class="ipt">
            <input type="text" placeholder="unit_price ... " class="form-control" name="unit_price" id="unit_price" value="<?php echo $product->unit_price ; ?>" >
        </div>
        <div class="ipt">
            <input type="text" placeholder="room ... " class="form-control" name="room" id="room" value="<?php echo $product->room ; ?>" >
        </div>
        <div class="ipt">
            <input type="text" placeholder="priority ... , 0 being highest" class="form-control" name="priority" id="priority" value="<?php echo $product->priority ; ?>" >
        </div>
        <div class="ipt">
            <input type="text" placeholder="phase ... " class="form-control" name="phase" id="phase" value="<?php echo $product->phase ; ?>" >
        </div>
        <div class="ipt">
            <textarea placeholder="remarks ... " class="form-control" name="remarks" id="remarks" rows="3" value="<?php echo $product->remarks ; ?>" ></textarea>
        </div>
        <div class="ipt">
            <input type="submit" name="action" value="edit product" class="btn btn-dark">
        </div>
    </form>    
</body>
</html>
