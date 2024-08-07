<?php error_reporting(0); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SQL Statements</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            text-align: center;
        }
        textarea {
            width: 100%;
            height: 200px;
        }
        .button {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>SQL Statements</h1>
        <button onclick="window.location.href='../index.php'">Go Back Home</button>
        <textarea id="sqlStatements" readonly><?php
            include 'DB.php';

            // Prepare the SQL statements
            $truncateSQL = "TRUNCATE products;";
            $insertSQL = "";

            try {
                $query = $connection->query("SELECT * FROM products");
                $results = $query->fetchAll(PDO::FETCH_ASSOC);
                
                if ($results) {
                    $columns = array_keys($results[0]);
                    $columnsList = implode(", ", $columns);

                    $insertSQL .= "INSERT INTO products ($columnsList) VALUES ";

                    $valuesList = [];
                    foreach ($results as $row) {
                        $values = array_map(function($value) use ($connection) {
                            return $connection->quote($value);
                        }, array_values($row));
                        $valuesList[] = "(" . implode(", ", $values) . ")";
                    }

                    $insertSQL .= implode(", ", $valuesList) . ";";
                } else {
                    $insertSQL = "-- No data found in the products table.";
                }

            } catch (PDOException $e) {
                echo "Error: " . $e->getMessage();
            }

            // Combine SQL statements
            echo htmlspecialchars($truncateSQL . "\n" . $insertSQL);
        ?></textarea>
        <div class="button">
            <button onclick="copyToClipboard()">Copy to Clipboard</button>
        </div>
    </div>

    <script>
        function copyToClipboard() {
            var copyText = document.getElementById("sqlStatements");
            copyText.select();
            copyText.setSelectionRange(0, 99999); // For mobile devices

            document.execCommand("copy");

            alert("SQL statements copied to clipboard!");
        }
    </script>
</body>
</html>
