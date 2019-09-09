<?php require_once 'core/init.php';?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

   <title>Admin - View Supervisors</title>
  <link rel="shortcut icon" href="src/media/favico.ico" type="image/x-icon">
  <!-- Custom fonts-->
  <link href="src/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles-->
  <link href="src/css/admin.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Admin</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="index.php">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        UPLOAD
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fa fa-folder"></i>
          <span>FORMS</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">UPLOAD FORMS:</h6>
            <a class="collapse-item" href="upload-students.php">STUDENTS</a>
            <a class="collapse-item" href="input-supervisors.php">SUPERVISORS</a>
          </div>
        </div>
      </li>
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        ACTIONS 
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-eye"></i>
          <span>VIEW</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">ACTIONS:</h6>
            <a class="collapse-item" href="view-students.php">View Students</a>
            <a class="collapse-item" href="view-supervisors.php">View Supervisors</a>
            <div class="collapse-divider"></div>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="allocate.php">
          <i class="fas fa-fw fa-comments"></i>
          <span>Allocate</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

     <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>


            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <span class="mr-2 d-none d-lg-inline text-gray-600 small">ADMIN</span>
                <img class="img-profile rounded-circle" src="src/media/avatar.png">
              </a>
               <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">View Supervisors</h1>
            <a href="generate-report.php" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
          </div>

        <!-- /.container-fluid -->
        <hr>
                  <div class="row ml-auto">
            <div class="col-md-2"></div>
            <!-- Area Chart -->
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">View Supervisors</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-user text-black"></i>
                    </a>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                              
                  <div class="row">
                
                    <div class="col-md-2"></div>
                
                    <div class="col-md-8">        
        <form class="user" method="POST" action="" enctype="multipart/form-data">
                
                      <div class="form-group">
                        <label>SESSION ?</label>
                        <select class="form-control" name="session">
                        <option>Choose Session!</option>
                        <option value="s20182019">2018/2019</option>
                        <option value="s20172018">2017/2018</option>
                        </select>
                      </div>


                      <div class="row" style="margin-top: 5%;">
                            <div class="col-md-6">
                              <div class="form-group">
                                  <input type="submit" class="btn btn-primary btn-user btn-block" value="SUBMIT">
                              </div>
                      </div>

                          <div class="col-md-6">
                            <div class="form-group">
                                <input type="reset" class="btn btn-danger btn-user btn-block" style="float: right;" value="CANCEL">
                            </div>
                          </div>
                        
                        </div>
        </form>
          </div>
                
                    <div class="col-md-2"></div>
                
                  </div> <!-- DIV CLASS ROW -->
                
                </div>
              </div>
            </div>

      </div>
        
        <hr>
                    <!-- Content Row -->
                  <!-- Page Heading -->
          <!-- DataTales Example -->
          <div class="row">
            <div class="col-md-2"></div>
          <div class="card shadow mb-4 col-md-8">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Supervisors</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered text-center text-capitalize" id="dataTable" width="100%" cellspacing="0">
                <?php

                //

                   $session = input::get('session');


                $getSup = DB::getInstance()->query("
                  SELECT *
              FROM tblsupervisors
              WHERE session = ?",
              array(
                'session' => $session));

                if(!$getSup->count()) {
            
            echo '<div class="alert alert-warning text-capitalize" role="alert">
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
            <span class="sr-only">Error:</span><marquee>TABLE IS EMPTY!!!  TABLE IS EMPTY!! TABLE IS EMPTY!!TABLE IS EMPTY!!</marquee></div>';
      
                }else
                {
                ?>

                  <thead>
                    <tr>
                      <th>Table ID</th>
                      <th>Title</th>
                      <th>Surnname</th>
                      <th>Firstname</th>
                      <th>Session</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                       <th>Table ID</th>
                       <th>Title</th>
                      <th>Surnname</th>
                      <th>Firstname</th>
                      <th>Session</th>
                    </tr>
                  </tfoot>
               <?php
                foreach($getSup->results() as $getSup)
                {
                ?>
                  <tbody>
                    <tr>

                      <td><?php echo $getSup->sup_id;?></td>
                      <td><?php echo $getSup->title;?></td>
                       <td><?php echo $getSup->surname;?></td>
                      <td><?php echo $getSup->firstname;?></td>
                      <td><?php echo $getSup->session;?></td>
                    </tr>
                <?php
              }

            }
            ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>

        <div class="col-md-2"></div>
      </div>
        <hr>

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
           <span>Copyright &copy; MAPOLY STUDENT/SUPERVISORS ALLOCATION SYSTEM </span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
         <a class="btn btn-primary" href="logout.php">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="src/vendor/jquery/jquery.min.js"></script>
  <script src="src/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="src/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugins -->
  <script src="src/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="src/vendor/datatables/dataTables.bootstrap4.min.js"></script>
  <!-- Custom scripts for all pages-->
  <script src="src/js/admin.min.js"></script>
  <!-- Page level custom scripts -->
  <script src="src/js/demo/datatables-demo.js"></script>
</body>

</html>
