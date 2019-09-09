
<?php
    if (Input::exists()) 
    {
                   $level = input::get('level');
                   $programme = input::get('programme');
            
              include 'checkcount.php';

              $getStudents = DB::getInstance()->query(" 
              SELECT  matric_no, level
              FROM tbl20182019
              WHERE level = ?
              AND programme =  ?
              ORDER BY RAND() limit $total
             ",array(
                'level' => $level,
                'programme' => $programme
                ));



                if(!$getStudents->count())
                {            
                  echo '<div class="alert alert-warning text-capitalize" role="alert">
                  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                  <span class="sr-only">Error:</span><marquee>TABLE IS EMPTY!!!  TABLE IS EMPTY!! TABLE IS EMPTY!!TABLE IS EMPTY!!</marquee></div>';
                }
            
                else          
                {
                
                  foreach($getStudents->results() as $getStudents)
                  {     

                    include 'supervisorsProcess.php';
                        
                         $projectSeminar = DB::getInstance()->insert('tblprojectseminar', array(
                          'matric_no' => $getStudents->matric_no,
                          'sup_id' => $getSup->sup_id,
                          'title' => $getSup->title,
                          'surname' => $getSup->surname,
                          'level' => $getStudents->level,
                          'category' =>input::get('category'),
                          'programme' => $programme,
                          'session' =>input::get('session')
                                        ));
                  }
                         if ($projectSeminar)
                         {
                          ?>
                     <div class="alert alert-info text-capitalize" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="sr-only"></span> ALLOCATION SUCCESSFULLY DONE!!
              </div>

              <script>
              setTimeout(function(){
              window.location.href= "allocate-projectSeminar-supervisors.php#count";
              }, 700);
              </script>

                         <?php
                          }
                         else
                         {
        echo ' <div class="alert alert-error text-capitalize" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="sr-only"></span>EROR!!! RECORDS NOT INSERTED!!
              </div>';

                }         }

    }            
?>