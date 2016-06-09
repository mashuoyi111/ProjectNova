<?php
include 'mysql_login_info.ini';

// Define global PDO handler.
$dbh = null;

// Exception handler
function exception_handler($exception) {
  echo "ERROR!: " , $exception->getMessage(), "\n";
  die();
}
set_exception_handler('exception_handler');

// Initialize PDO object and conncet to the server.
// Open transation. Must call commit() after.
function db_connect(){
	$GLOBALS['dbh'] = new PDO('mysql:host=localhost;dbname=nova;charset=utf8', MYSQL_DB_USER, MYSQL_DB_PASS);
	$GLOBALS['dbh']->beginTransaction();
}

// Commit and Close databae connection
function db_commit(){ 
	$GLOBALS['dbh']->commit();
	$GLOBALS['dbh'] = null; 
}
?>
