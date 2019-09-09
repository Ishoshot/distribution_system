  <?php
  if(Input::exists())
  {
        $session = input::get('session');
       
         $s20172018 = 's20172018';
          $s20182019 = 's20182019';


    if ($s20172018 == $session)
    {
        // -------------------
      if (input::get('students'))
      {
            
        $allowedFile =  array("csv","CSV");            
        $upload = new Upload(input::get('students'), "STUDENTS/", 10000024,$allowedFile);
        if($allowedFile == true)
        {
                
                $file = $upload->GetFile();

                    //set temp name and then open
                    $handle = fopen($file, 'r');
                        //loop through the file and get contents via fgetcsv into an array

                while(($line=fgetcsv($handle, 1000, ",")) !== FALSE)
                {

                    $surname = $line[0];
                    $firstname = $line[1];
                    $othernames = $line[2];
                    $matric = $line[3];
                    $programme = $line[4];
                    $level = $line[5];
                    
          $tbl18 = DB::getInstance()->query("INSERT INTO tbl20172018 (surname,firstname, othername, matric_no, programme, level) 
                      values ('" . $surname . "','" . $firstname . "','" . $othernames . "','" . $matric. "','" . $programme . "','" . $level . "')");

                   }
              if($tbl18)
            {
               ?>      
             <div class="alert alert-info text-capitalize" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="sr-only"></span> RECORDS INSERTED SUCCESSFULLY!!
              </div>
                      <script>
              setTimeout(function(){
              window.location.href= "view-students.php";
              }, 700);
              </script>
      
               <?php
            
            }else
            {
              ?>
             <div class="alert alert-error text-capitalize" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="sr-only"></span>EROR!!! RECORDS NOT INSERTED!!
              </div>
              <?php
          }
               // 

        }else
        {
                echo "  INVALID FILE FORMAT CHOOSEN!!!";
        }
      }
        // ---------------
    }elseif ($s20182019 == $session)
    {

            // =============================
            if (input::get('students'))
      {
            
        $allowedFile =  array("csv","CSV");            
        $upload = new Upload(input::get('students'), "STUDENTS/", 100000024,$allowedFile);
        if($allowedFile == true)
        {
                
                $file = $upload->GetFile();

                    //set temp name and then open
                    $handle = fopen($file, 'r');
                        //loop through the file and get contents via fgetcsv into an array

                while(($line=fgetcsv($handle, 1000, ",")) !== FALSE)
                {

                    $surname = $line[0];
                    $firstname = $line[1];
                    $othernames = $line[2];
                    $matric = $line[3];
                    $programme = $line[4];
                    $level = $line[5];

                     $tbl19 = DB::getInstance()->query("INSERT INTO tbl20182019 (surname,firstname, othername, matric_no, programme, level) 
                      values ('" . $surname . "','" . $firstname . "','" . $othernames . "','" . $matric. "','" . $programme . "','" . $level . "')");

                   }
              if($tbl19)
            {
               ?>      
             <div class="alert alert-info text-capitalize" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="sr-only"></span> RECORDS INSERTED SUCCESSFULLY!!
              </div>
                      <script>
              setTimeout(function(){
              window.location.href= "view-students.php";
              }, 700);
              </script>
      
               <?php
            
            }else
            {?>
              <div class="alert alert-danger text-capitalize" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="sr-only"></span>ERROR!!! RECORDS NOT INSERTED!!
              </div>
              <?php
            }
               // 

        }else
        {
                echo "  INVALID FILE FORMAT CHOOSEN!!!";
        }
      }
        // ---------------      // =============================

    }else
    {
      echo "NO SESSION SELECTED!";
    }
                              
  } 
    ?>