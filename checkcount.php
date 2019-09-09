<?php
	$get = DB::getInstance()->query(" 
	SELECT matric_no from tbl20182019
	where programme= '$programme'
	AND level =  '$level'");
 $total = $get->count();             
?>



<?php
      $s20182019 = 's20182019';
	$supcunt = DB::getInstance()->query(" 
	SELECT sup_id from tblsiwes
	AND session =  '$s20182019'");
 $suptotal = $supcunt->count();             
?>

