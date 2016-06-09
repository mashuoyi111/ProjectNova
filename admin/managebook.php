<?php
  require_once("../connect.php");
  $sql = "select * from Books order by BID desc";
  $query = mysqli_query($connect, $sql);
  //var_dump($query);

  if($query){
    while ($row = mysqli_fetch_assoc($query)) {
      $data[] = $row;     //每一次赋值，产生一个下标
    }
  } else {
    $data = array();
  }
  ?>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <body>
  <table width="100%" height="520" border="0" cellpadding="8" cellspacing="1" bgcolor="#000000">
    <tr>
      <td width="156" height="287" align="left" valign="top" bgcolor="#FFFF99"><p><a href="add.php">Publish articles</a></p>
      <p><a href="manage.php">Manage articles</a></p></td>
      <td width="837" valign="top" bgcolor="#FFFFFF"><table width="743" border="0" cellpadding="8" cellspacing="1" bgcolor="#000000">
        <tr>
          <td colspan="3" align="center" bgcolor="#FFFFFF">Article list</td>
          </tr>
        <tr>
          <td width="572" bgcolor="#FFFFFF">Title</td>
          <td width="82" bgcolor="#FFFFFF">Action</td>
        </tr>
  	<?php
  		if(!empty($data)){
  			foreach($data as $value){
  	?>
        <tr>
          <td bgcolor="#FFFFFF">&nbsp;<?php echo $value['BID']?></td>
          <td bgcolor="#FFFFFF">
              <a href="del.handle.php?bid=<?php echo $value['BID']?>">Delete</a>
              <a href="modify.php?bid=<?php echo $value['BID']?>">Modify</a>
            </td>
        </tr>
          <?php
          		}
  		      }
          ?>
      </table></td>
    </tr>
  </table>
  </body>
  </html>
