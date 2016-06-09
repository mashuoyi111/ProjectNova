<?php
/* Sample PDO usage demo:
	Besure to do all 3 steps when use, $dbh is the PDO object prepared.*/

/* 1. Import Connection head File */
include 'pdo_h.php';

class Author {
    public $AID;
    public $LCode;
    public $AName;
    public $ADesc;

    public function toString() {
        return 'Author: '.$this->AID.' LCode:'.$this->LCode.' AName:'.$this->AName.' ADesc:'.$this->ADesc;
    }
}

/* 2. Call db_connect() before use the $dbh PDO object*/
db_connect();

$stmt = $dbh->query("SELECT * FROM authors");
$stmt->setFetchMode(PDO::FETCH_INTO, new Author);
foreach($stmt as $author)
{
    echo $author->toString().'<br /> <br />';
}

/* 3. Call db_commit() after */
db_commit();
?>
