<?php
class DB {
    private $connection;

    public function __construct($host, $username, $password, $database) {
        $this->connection = mysql_connect($host, $username, $password);
        if (!$this->connection) {
            die('Could not connect: ' . mysql_error());
        }
        mysql_select_db($database, $this->connection);
    }

    public function query($sql) {
        $result = mysql_query($sql, $this->connection);
        if (!$result) {
            die('Query failed: ' . mysql_error());
        }
        return $result;
    }

    public function close() {
        mysql_close($this->connection);
    }
}
?>
