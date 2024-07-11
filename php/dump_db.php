<?php
require_once 'DB.php';

$output = '../sql/latest.sql';

// Command to execute mysqldump
$command = "mysqldump --user=$mysql_user --password=$password --host=$server_name $databases_we_are_using > $output";

// Execute the command
exec($command, $output, $return_var);

if ($return_var !== 0) {
    echo "Error creating database dump.";
} else {
    echo "Database dump created successfully.";
}
?>
