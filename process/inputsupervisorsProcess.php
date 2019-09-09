<?php 
if (input::exists()) {
$inputSup = DB::getInstance()->insert('tblsupervisors', array(
			'session' => input::get('session'),
			'title' => input::get('title'),
			'surname' =>input::get('surname'),
			'firstname' => input::get('firstname')
));
        if ($inputSup) {

               ?>      
             <div class="alert alert-info text-capitalize" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="sr-only"></span> RECORDS INSERTED SUCCESSFULLY!!
              </div>
                      <script>
              setTimeout(function(){
              window.location.href= "input-supervisors.php";
              }, 700);
              </script>
      
               <?php
            
            }else{
              echo ' <div class="alert alert-error text-capitalize" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="sr-only"></span>EROR!!! RECORDS NOT INSERTED!!
              </div>';
            }
}
?>