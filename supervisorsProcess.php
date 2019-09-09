<?php
      
      $s20182019 = 's20182019';

      include'checkcount.php';
      
      $getSup = DB::getInstance()->query("
      SELECT * FROM tblsupervisors
      WHERE session = ?
      ORDER BY RAND()
      LIMIT $suptotal",
      array(
      'session' =>$s20182019
      ));

            if($getSup->count())      
            {
                  foreach ($getSup->results() as $getSup){
                



                         }
            }           
?>