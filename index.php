<?php
include "php/DB.php";
$obj = (object)$_POST;

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

    <link rel="stylesheet" href="css/style.css">
    <script src="js/script.js"></script>
    
</head>
<body>
    <h1>Products</h1>
    <div class="cont">
        <form action="" method="post">
            <div class="topbar">
                <div class="tb_item">
                    <div class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addprod">Add Product</div>
                </div>

                <div class="tb_item">
                    <select name="selected_phase" id="selected_phase">
                        <option selected disabled>Choose a Phase</option>
                        <?php
                            $query = "SELECT DISTINCT phase from products";
                            $stmt = $connection->query($query);
                            $results = $stmt->fetchAll(PDO::FETCH_OBJ);
                            foreach($results as $row){
                                $selected = $row->phase == $obj->selected_phase?'selected':'';
                                echo 
                                " 
                                    <option $selected value='$row->phase'>$row->phase</option>
                                ";
                            }
                        ?>
                    </select>
                </div>

                <div class="tb_item">
                    <select name="selected_priority" id="selected_priority">
                        <option selected disabled>Choose a Priority</option>
                        <?php
                            $query1 = "SELECT DISTINCT priority from products";
                            $stmt1 = $connection->query($query1);
                            $results1 = $stmt1->fetchAll(PDO::FETCH_OBJ);
                            foreach($results1 as $row1){
                                $selected = $row1->priority == $obj->selected_priority?'selected':'';
                                echo 
                                " 
                                    <option $selected value='$row1->priority'>$row1->priority</option>
                                ";
                            }
                        ?>
                    </select>
                </div>

                <div class="tb_item">
                    <input type="submit" value="Filter" name="action" class="btn btn-dark">
                </div>

                
            </div>
        </form>

        <div class="divtable">
            <table class="table table-bordered" id="main_table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Quantity</th>
                        <th>Unit Price</th>
                        <th>Type</th>
                        <th>Room</th>
                        <th>Phase</th>
                        <th>Priority</th>
                        <th>Ttl Price</th>
                    </tr>
                </thead>

                <tbody>
                    <?php
                        $total = 0;
                        function convert_phase($phase){
                            if($phase == 1){ return 'One';}
                            if($phase == 2){ return 'Two';}
                            if($phase == 3){ return 'Three';}
                            if($phase == 4){ return 'Four';}
                            if($phase == 5){ return 'Five';}
                            if($phase == 6){ return 'Six';}
                            if($phase == 7){ return 'Seven';}
                            if($phase == 8){ return 'Eight';}
                            if($phase == 9){ return 'Nine';}
                            if($phase == 10){ return 'Ten';}
                            if($phase == 11){ return 'Eleven';}
                            if($phase == 12){ return 'Twelve';}
                        }
                        function convert_priority($priority){
                            if($priority == 1){ return 'Moja';}
                            if($priority == 2){ return 'Mbili';}
                            if($priority == 3){ return 'Tatu';}
                            if($priority == 4){ return 'NNe';}
                            if($priority == 5){ return 'Tano';}
                            if($priority == 6){ return 'Sita';}
                            if($priority == 7){ return 'Saba';}
                            if($priority == 8){ return 'nane';}
                            if($priority == 9){ return 'Tisa';}
                            if($priority == 10){ return 'Kumi';}
                            if($priority == 11){ return 'Maria';}
                            if($priority == 12){ return 'Arteta';}
                        }
                        // Get all products
                        $where= '';
                        if(isset($obj->action) && $obj->action="Filter"){
                            $where = ' where 1=1 ';
                            if(isset($obj->selected_phase)){ $where .= " AND phase = '$obj->selected_phase' ";}
                            if(isset($obj->selected_priority)){ $where .= " AND priority = '$obj->selected_priority' ";}
                        }
                        $query = "SELECT name,quantity,unit_price,type,room,phase,priority,(quantity*unit_price)as total FROM products $where";

                        $stmt = $connection->query($query);
                        $results = $stmt->fetchAll(PDO::FETCH_OBJ);
                        // results is an associative array so to read data inside it,
                        //  you can use a loop condition like so
                        $i=1;
                        foreach ($results as $row) {
                            echo
                                "<tr>
                                    <td>$i</td>
                                    <td>$row->name</td>
                                    <td>$row->quantity</td>
                                    <td>$row->unit_price</td>
                                    <td>$row->type</td>
                                    <td>$row->room</td>
                                    <td>".$row->phase."</td>
                                    <td>".$row->priority."</td>
                                    <td><B>$row->total</B></td>
                                </tr>";
                            $i++;
                            $total += $row->total;
                        }
                    ?>

                    
                </tbody>

                <tfoot>
                    <!-- tTotal Column -->
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th><?php echo $total;?></th>
                    </tr>
                </tfoot>
            </table>
        </div>
        
    </div>


    <!-- Add Product Modal -->
        <!-- The Modal -->
        <div class="modal" id="addprod">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Add Product</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <form action="php/add_product.php" method="post">
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
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>
    <!-- END of Add Product Modal -->

</body>
</html>