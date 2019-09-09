<?php require_once 'core/init.php';?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title></title>
  <link rel="shortcut icon" href="src/media/favico.ico" type="image/x-icon">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles-->
</head>
<body>
<?php
$session= input::get('session');
header("Content-Type: application/vnd.ms-word");
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("content-disposition: attachment;filename=SeminarReport.doc");
?>

	 <h2 style="text-align:center; font-weight: bold; font-size: 18px;" ><b><u>SIWES ALLOCATION LIST FOR ND I</u></b></h2>
	 <div class="table-responsive">
               <table border="1" width="100%" cellspacing="2" style="text-transform:uppercase; font-size:16px;">
<?php
	$generateSiwes = DB::getInstance()->query("
              SELECT *
              FROM tblsiwes
              WHERE session = ?",
              array(
                'session' =>$session
                ));

                if(!$generateSiwes->count())
                {
            
            echo '<div class="alert alert-warning text-capitalize" role="alert">
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
            <span class="sr-only">Error:</span><marquee>TABLE IS EMPTY!!!  TABLE IS EMPTY!! TABLE IS EMPTY!!TABLE IS EMPTY!!</marquee></div>';
      
                }else
                {
                ?>
                  <thead>
                    <tr>
                      <th>Matric</th>
                      <th>Supervisor</th>
                      <th>Level</th>
                    </tr>
                  </thead>
               <?php
                foreach($generateSiwes->results() as $generateSiwes)
                {
                ?>
                  <tbody>
                    <tr>
    
                      <td style="text-align:center; text-transform:capitalize;">
                        <?php echo $generateSiwes->matric_no;?>
                      </td>


                     <td style="text-align:center; text-transform: capitalize;">
                        <?php echo $generateSiwes->title .' '. $generateSiwes->surname;?>
                          
                      </td>

                     <td style="text-align:center; text-transform:capitalize;">
                        <?php echo $generateSiwes->level .'II';?>
                    </td>

                    </tr>
                <?php
              }

            } 
  
  
            ?>
                  </tbody>
                </table>
                </div>

</body>
</html>