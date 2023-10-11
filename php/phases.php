<?php
    include "DB.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phases</title>
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

    <style>
        .cont{
            /* display: grid; */
            display: flex;
            justify-content: space-evenly;
            width:90%;
            border: 1px solid black ;
            /* flex-direction: column; */
        }
        .phase table{
            width: 10%;
        }
        .toggleable {
            display: none;
        }

        .trigger {
            cursor: pointer;
        }

        .trigger:hover {
            background-color: #f0f0f0;
        }

        .table td {
            width: 50%; /* Adjust this value as needed */
        }
    </style>
</head>
<body>
    <nav>
        <a name="" id="" class="btn btn-primary" href="../" role="button">Home</a>
    </nav>
    <h1>Phases</h1>
    <div class="cont">
        <?php
            $phases_query = "SELECT DISTINCT phase from products ORDER BY phase";
            $phases_stmt = $connection->query($phases_query);
            $phases_results = $phases_stmt->fetchAll(PDO::FETCH_OBJ);
            foreach($phases_results as $phase){
                $phase_total = 0;
                // we'll print the table
                ?>
                <div class="phase">
                    <table class='table table-striped table-hover table-bordered'>
                        <tr>
                            <td colspan='2' style="background:#999">Phase <?php echo $phase->phase; ?> </td>
                        </tr>

                        <?php
                        // Get the type
                        $types_query = "SELECT DISTINCT type from products WHERE phase = '$phase->phase' and status=0 ORDER BY type";
                        $types_stmt = $connection->query($types_query);
                        $types_results = $types_stmt->fetchAll(PDO::FETCH_OBJ);
                        foreach($types_results as $type){
                            $type_total=0;
                            // Get the sum of the type
                            $type_total_query = "SELECT SUM(quantity*unit_price) total from products WHERE status='0' AND phase = '$phase->phase' AND type='$type->type' ";
                            $type_total_stmt = $connection->query($type_total_query);
                            $type_total_results = $type_total_stmt->fetchAll(PDO::FETCH_OBJ);
                            $type_total = $type_total_results[0]->total;
                            // Add this info to Table
                            echo "<tr class='trigger' onclick='deezplay(this)' >";
                                echo "<td>$type->type</td>";
                                echo "<td>$type_total</td>";
                            echo "</tr>";
                            // Get the products
                            echo "<tr class='toggleable' >";
                                echo "<td colspan='2' >";
                                    $products_query = "SELECT name, quantity*unit_price as price from products WHERE status='0' AND phase = '$phase->phase' AND type='$type->type' ";
                                    $products_stmt = $connection->query($products_query);
                                    $products_results = $products_stmt->fetchAll(PDO::FETCH_OBJ);
                                    foreach($products_results as $product){
                                        $phase_total += $product->price;
                                        //create another table for displaying the prices
                                        echo "<table class='table table-info table-bordered'>";
                                            echo "<tr>";
                                                echo "<td>$product->name</td>";
                                                echo "<td>$product->price</td>";
                                            echo "</tr>";
                                        echo "</table>";
                                    }
                                echo "</td>";
                            echo "</tr>";
                        }
                        ?>
                        <tr>
                            <th>Total</th>
                            <th><?php echo $phase_total; ?></th>
                        </tr>
                    </table>
                </div>

                <?php

            }
        ?>
    </div>

    <script>
        function deezplay(elm){
            let nextRow = elm.nextElementSibling;
            if (nextRow && nextRow.classList.contains('toggleable')) {
                nextRow.style.display = (nextRow.style.display === 'none') ? 'table-row' : 'none';
            }
        }
    </script>
</body>
</html>