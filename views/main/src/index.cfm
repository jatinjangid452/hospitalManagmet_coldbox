<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- plugins:css -->
    <link rel="stylesheet" href="/includes/admin/assets/vendors/feather/feather.css">
    <link rel="stylesheet" href="/includes/admin/assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="/includes/admin/assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="/includes/admin/assets/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/includes/admin/assets/vendors/mdi/css/materialdesignicons.min.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- <link rel="stylesheet" href="assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css"> -->
    <link rel="stylesheet" href="/includes/admin/assets/vendors/datatables.net-bs5/dataTables.bootstrap5.css">
    <link rel="stylesheet" href="/includes/admin/assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="/includes/admin/assets/js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="/includes/admin/assets/css/style.css">
 <style>
 

    
</style>
 </head>
 <body>
  <cfoutput>

      <!-- partial:partials/_navbar.html -->
      
      <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
          <h2>Dashboard</h2>
        </div>
  <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
      <span class="icon-menu"></span>
    </button>
 
 
    <ul class="navbar-nav navbar-nav-right">
        <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
      
          <a class="dropdown-item preview-item">
            <div class="preview-thumbnail">
              <div class="preview-icon bg-success">
                <i class="ti-info-alt mx-0"></i>
              </div>
            </div>
            <div class="preview-item-content">
              <h6 class="preview-subject font-weight-normal">Application Error</h6>
              <p class="font-weight-light small-text mb-0 text-muted"> Just now </p>
            </div>
          </a>

          </a>
          <a class="dropdown-item preview-item">
            <div class="preview-thumbnail">
              <div class="preview-icon bg-info">
                <i class="ti-user mx-0"></i>
              </div>
            </div>
            <div class="preview-item-content">
              <h6 class="preview-subject font-weight-normal">New user registration</h6>
              <p class="font-weight-light small-text mb-0 text-muted"> 2 days ago </p>
            </div>
          </a>
        </div>
      </li>
      <li class="nav-item nav-profile dropdown">
        <a class="nav-link dropdown-toggle" href="##" data-bs-toggle="dropdown" id="profileDropdown"> Jatin
        <button><img src="/includes/images/user.png" alt="profile" /></button>
        </a>
        <a class="dropdown-item" href="../index.cfm">
        Logout </a>
      </li>
    </ul>
    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
      <span class="icon-menu"></span>
    </button>
  </div>
  
     <!--- doctor count --->
  <cfquery name="Get_Doctors">
    SELECT doctor_id, name, specialization, post
    FROM doctor_details
    ORDER BY doctor_id DESC
</cfquery>
<cfset count=Get_Doctors.recordCount>
<!--- patient --->
<cfquery name="getPatients">
  SELECT * FROM register_patient
</cfquery>
<cfset j=getPatients.recordCount>
<!--- appointment --->
<cfquery name="getAppointments">
SELECT * FROM appointments
</cfquery>
<cfset a=getAppointments.recordCount>
<!--- query --->
<cfquery name="get">
SELECT * FROM patient_queries
</cfquery>
<cfset c=get.recordCount>
</nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
 <nav class="sidebar sidebar-offcanvas" id="sidebar">
  <ul class="nav">
    <li class="nav-item">
      <a class="nav-link">
        <i class="icon-grid menu-icon"></i>
        <span class="menu-title">Dashboard</span>
      </a>
    </li>
 
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="##ui-basic" aria-expanded="false" aria-controls="ui-basic">
        <i class="icon-layout menu-icon"></i>
        <span class="menu-title">Doctor</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="ui-basic">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="#event.buildLink('Main/doctorManagement')#">Doctor details</a></li>
         
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="##form-elements" aria-expanded="false" aria-controls="form-elements">
        <i class="icon-columns menu-icon"></i>
        <span class="menu-title">Patients</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="form-elements">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="#event.buildLink('Main/Patinetdetails')#">patient_details</a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="##charts" aria-expanded="false" aria-controls="charts">
        <i class="icon-bar-graph menu-icon"></i>
        <span class="menu-title">Appointment History</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="charts">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="#event.buildLink('Main/appoints')#">Appointment lists</a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="##icons" aria-expanded="false" aria-controls="icons">
        <i class="icon-contract menu-icon"></i>
        <span class="menu-title">Query</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="icons">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="#event.buildLink('Main/reports')#">Patient Query</a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="##password" aria-expanded="false" aria-controls="password">
        <i class="icon-contract menu-icon"></i>
        <span class="menu-title">update Admin password</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="password">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="#event.buildLink('Main/Adminpass')#">password</a></li>
        </ul>
      </div>
    </li>

  </ul>
</nav>

        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="row">
                  <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                    <h3 class="font-weight-bold">Welcome Jatin</h3>
                  </div>
                  <div class="col-12 col-xl-4">
                    <div class="justify-content-end d-flex">
                      <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6 grid-margin transparent">
                    <div class="row">
                      <div class="col-md-6 mb-4 stretch-card transparent">
                        <div class="card card-tale">
                          <div class="card-body">
                            <p class="mb-4">Doctor</p>
                            <p>#count#</p>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6 mb-4 stretch-card transparent">
                        <div class="card card-dark-blue">
                          <div class="card-body">
                            <p class="mb-4">Patients</p>
                            <p>#j#</p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
                        <div class="card card-light-blue">
                          <div class="card-body">
                            <p class="mb-4">Appointments</p>
                            <p>#a#</p>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6 stretch-card transparent">
                        <div class="card card-light-danger">
                          <div class="card-body">
                            <p class="mb-4">Query</p>
                            <p>#c#</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
        
                  <!-- Image Column -->
                  
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </cfoutput>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script src="/includes/admin/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="/includes/admin/assets/vendors/chart.js/chart.umd.js"></script>
    <script src="/includes/admin/assets/vendors/datatables.net/jquery.dataTables.js"></script>
    <!-- <script src="assets/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script> -->
    <script src="/includes/admin/assets/vendors/datatables.net-bs5/dataTables.bootstrap5.js"></script>
    <script src="/includes/admin/assets/js/dataTables.select.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="/includes/admin/assets/js/off-canvas.js"></script>
    <script src="/includes/admin/assets/js/template.js"></script>
    <script src="/includes/admin/assets/js/settings.js"></script>
    <script src="/includes/admin/assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="/includes/admin/assets/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/includes/admin/assets/js/dashboard.js"></script>
    <!-- <script src="assets/js/Chart.roundedBarCharts.js"></script> -->
    <!-- End custom js for this page-->
  </body>
</html>
