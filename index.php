<?php
include "php/DB.php";
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
    
</head>
<body>
    <h1>Products</h1>
    <div class="cont">
        <div class="topbar">
            <div class="tb_item">
                <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addprod">Add Product</button>
            </div>

            <div class="tb_item">
                <!-- <button class="btn btn-success"></button> -->
            </div>
        </div>

        <div class="divtable">
            <table class="table table-bordered" id="main_table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Quantity</th>
                        <th>Unit Price</th>
                        <th>Room</th>
                        <th>Phase</th>
                        <th>Priority</th>
                        <th>Ttl Price</th>
                    </tr>
                </thead>

                <tbody>

                </tbody>

                <tfoot>

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
                        <div class="ipt"></div>
                        <div class="ipt"></div>
                        <div class="ipt"></div>
                        <div class="ipt"></div>
                        <div class="ipt"></div>
                        <div class="ipt"></div>
                        <div class="ipt"></div>
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