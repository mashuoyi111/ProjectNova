
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome to nova!</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">

</head>


<body>



<center><h1>Book Name</h1></center>

<center>
<?php
  include 'pdo_h.php';
   
  class Bookinfo{
  public $BName;
  public $BDesc;
  public $AName;
  public $ADesc;
  public $WCount;
  
  public function printBName() {
  return $this->BName;
  }

  public function printBDesc() {

  return 'A'.$this->BDesc;
  }
  }


  db_connect();

$stmt = $dbh->query("SELECT BName FROM BookDetails WHERE BID='Re_Zero_Novels' AND LCode='zho' ");
$stmt->setFetchMode(PDO::FETCH_INTO, new Bookinfo);
foreach($stmt as $bookinfo)
{
    echo nl2br($bookinfo->printBName().'<br /> <br />');
}






?>


<p><font size="5" color="black">Author name </font></p>


<p>Book information</p>

<?php

$stmt1 = $dbh->query("SELECT BDesc FROM BookDetails WHERE BID='Re_Zero_Novels' AND LCode='zho' ");
$stmt1->setFetchMode(PDO::FETCH_INTO, new Bookinfo);


foreach($stmt1 as $bookinfo)
{
    echo $bookinfo->printBDesc().'<br /> <br />';
}


db_commit();
?>

<style>

#footer {
    position: fixed;
    bottom: 5%;
    width: 100%;
}
#center {
    width: 500px;
    margin: 0 auto;
}

</style>


<div id="footer">
        <div id="center">
<img src="images/readlink.png" alt="" class="img-circle">
</div>





</center>

</body>









