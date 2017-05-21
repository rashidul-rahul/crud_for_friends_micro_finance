<?php

class database
{
    private static $db;

    public static function dbConnection()
    {
        if (!isset(self::$db)) {
            self::$db = new PDO("mysql:hostname=localhost;dbname=students;", "root", "");
        }
    }

    public static function read($query)
    {
        $stmt = self::$db->query($query);
        if ($stmt) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } else {
            echo "Database Query problem...<br/>";
        }
    }

    public static function insert($query)
    {
        $stmt = self::$db->exec($query);
        if ($stmt) {
            return "Added Successful... <br/>";
        } else {
            echo "Adding problem...<br/>";
        }
    }

    public static function delete($query)
    {
        $stmt = self::$db->exec($query);
        if ($stmt) {
            return "delete Successful... <br/>";
        } else {
            echo "delete problem...<br/>";
        }
    }
}
