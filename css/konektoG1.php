<?php
class lidhdbg2{
    private $connection=null;

    public function __construct($dhhost, $dbname, $username, $password) {
        $this->connection=new PDO("mysql:host={$dhhost};dbname={$dbname};",$username,$password);
        echo "lidhja u realiza </br>";
    }
    public function getConnection(){
        return $this->connection;
    }
}
$tesKon=new lidhdbg2('localhost','studenti01','root','');
$tesKon->getConnection();

?>