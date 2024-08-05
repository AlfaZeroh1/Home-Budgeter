<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Sourcing DB...</h1>
    <button onclick="window.location.href='../index.php'">Go Back Home</button>
    <br><br><br>
    <?php
        require_once 'DB.php';

        $input = '../sql/latest.sql';

        try {
            // Disable foreign key checks to allow truncation of tables
            $connection->exec('SET FOREIGN_KEY_CHECKS = 0');

            // Get all table names in the database
            $tables = $connection->query('SHOW TABLES')->fetchAll(PDO::FETCH_COLUMN);

            // Truncate each table
            foreach ($tables as $table) {
                $connection->exec("TRUNCATE TABLE `$table`");
            }

            // Re-enable foreign key checks
            $connection->exec('SET FOREIGN_KEY_CHECKS = 1');

            // Command to restore the database from latest.sql
            $command = "mysql --user=$mysql_user --password=$password --host=$server_name $databases_we_are_using < $input";

            // Execute the command
            exec($command, $output, $return_var);

            if ($return_var !== 0) {
                echo "<h2>Error restoring database 🤒.</h2>";
            } else {
                echo "<h2>Database restored successfully 🥳🥳.</h2>";
            }
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    ?>
    
</body>
</html>


