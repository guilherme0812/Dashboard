<?php
namespace Models;

abstract class modelConect
{
    protected function conectDB() {
        try {
            $con = new \PDO("mysql:host=".HOST.";dbname=".DB."",USER,PASS);
            $con->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
            return $con;
        } catch (\PDOException $erro) {
            return $erro->getCode();
        }
    }
}