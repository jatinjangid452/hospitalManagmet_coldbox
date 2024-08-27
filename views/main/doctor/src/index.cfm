<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Doctor|Manage Patient</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="/includes/assets/vendors/feather/feather.css">
    <link rel="stylesheet" href="/includes/assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="/includes/assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="/includes/assets/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/includes/assets/vendors/mdi/css/materialdesignicons.min.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- <link rel="stylesheet" href="/includes/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css"> -->
    <link rel="stylesheet" href="/includes/assets/vendors/datatables.net-bs5/dataTables.bootstrap5.css">
    <link rel="stylesheet" href="/includes/assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="/includes/assets/js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="/includes/assets/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/includes/assets/images/favicon.png" />
    <link rel="stylesheet" href="/includes/css/logindoctor.css">

  </head>
  <body>
    <cfoutput>
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
  <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
    <h2>Dashboard</h2>
  </div>
  <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
      <span class="icon-menu"></span>
    </button>
    <cfquery name="getDoctorProfile">
      SELECT  name
      FROM doctor_details
      WHERE doctor_id = #SESSION.DoctorID#
  </cfquery>
    <ul class="navbar-nav navbar-nav-right">
      <li class="nav-item nav-profile dropdown">
        <a class="nav-link dropdown-toggle" href="##" data-bs-toggle="dropdown" id="profileDropdown">
          <img src="/includes/images/doctor.png" alt="profile" />
        </a>
        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
       
          <a class="dropdown-item" href="../../index.cfm">
            
            <i class="ti-power-off text-primary"></i> Logout </a>
        </div>
      </li>
    </ul>
    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
      <span class="icon-menu"></span>
    </button>
  </div>
</nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
  <ul class="nav">
    <li class="nav-item">
      <a class="nav-link" href="#event.buildLink('Main/jatin')#">
        <i class="icon-grid menu-icon"></i>
        <span class="menu-title">Doctor|Manage Patient</span>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="##ui-basic" aria-expanded="false" aria-controls="ui-basic">
        <i class="icon-layout menu-icon"></i>
        <span class="menu-title">Appointment History</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="ui-basic">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="#event.buildLink('Main/appoint')#">All appointments</a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="##form-elements" aria-expanded="false" aria-controls="form-elements">
        <i class="icon-columns menu-icon"></i>
        <span class="menu-title">Total Patient</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="form-elements">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="#event.buildLink('Main/patientpage')#">Patient All Details</a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="##tables" aria-expanded="false" aria-controls="tables">
        <i class="icon-columns menu-icon"></i>
        <span class="menu-title">Password</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="tables">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="#event.buildLink('Main/pass')#">Update Password</a></li>
        </ul>
      </div>
    </li>
   
  </ul>
</nav>
<div class="container">
  <div class="row">
      <div class="col-md-12">
          <h2>Doctor #getDoctorProfile.name#| Manage Patients</h2>
          <p>Manage <strong>Patients</strong></p>
      </div>
  </div>
  <cfquery name="getAppointments">
    SELECT p_id, doctor_name, appointment_date, reason
    FROM appointments
    Where  p_id=#SESSION.DoctorID#
</cfquery>
  <cfset a=getAppointments.recordCount>
    <cfquery name="getPatients">
    SELECT * FROM patinet_details
</cfquery>
<cfset j=getPatients.recordCount>
  <div class="row">
    <div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
      <div class="card card-light-blue">
        <div class="card-body">
          <p class="mb-1">Appointments</p>
          <p>#a#</p>
          <p class="mb-1">Patient Details</p>
          <p>#j#</p>
        </div>
      </div>
    </div>
  </div>

  <!--- <cfif structKeyExists(form, "submit")>
    <cfquery name="insertPatient">
        INSERT INTO patinet_details (
            `Patient Name`,
            `Patient Email`,
            `Patient Mobile Number`,
            `Patient Address`,
            `Patient Gender`,
            `Patient Age`,
            `Patient Medical History (if any)`,
            `Patient Reg Date`
        )
        VALUES (
            <cfqueryparam value="#form.patient_name#" cfsqltype="cf_sql_varchar" maxlength="100">,
            <cfqueryparam value="#form.patient_email#" cfsqltype="cf_sql_varchar" maxlength="100">,
            <cfqueryparam value="#form.patient_mobile#" cfsqltype="cf_sql_varchar" maxlength="100">,
            <cfqueryparam value="#form.patient_address#" cfsqltype="cf_sql_varchar" maxlength="100">,
            <cfqueryparam value="#form.patient_gender#" cfsqltype="cf_sql_varchar" maxlength="100">,
            <cfqueryparam value="#form.patient_age#" cfsqltype="cf_sql_integer">,
            <cfqueryparam value="#form.patient_medical_history#" cfsqltype="cf_sql_varchar" maxlength="100">,
            <cfqueryparam value="#form.patient_reg_date#" cfsqltype="cf_sql_timestamp">
        )
    </cfquery>

    <!--- Redirect to the patient page after insertion --->
    <cflocation url="pages/forms/Patient.cfm" addtoken="false">
</cfif> --->

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Enter Patient Details</h5>
                <form action="#event.buildLink('Main/insertpatient')#" method="post">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td><strong>Patient Name</strong></td>
                                    <td><input type="text" name="patient_name" required></td>
                                    <td><strong>Patient Email</strong></td>
                                    <td><input type="email" name="patient_email" required></td>
                                </tr>
                                <tr>
                                    <td><strong>Patient Mobile Number</strong></td>
                                    <td><input type="text" name="patient_mobile" required></td>
                                    <td><strong>Patient Address</strong></td>
                                    <td><input type="text" name="patient_address" required></td>
                                </tr>
                                <tr>
                                    <td><strong>Patient Gender</strong></td>
                                    <td>
                                        <select name="patient_gender" required>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select>
                                    </td>
                                    <td><strong>Patient Age</strong></td>
                                    <td><input type="number" name="patient_age" required></td>
                                </tr>
                                <tr>
                                    <td><strong>Patient Medical History (if any)</strong></td>
                                    <td><input type="text" name="patient_medical_history" required></td>
                                    <td><strong>Patient Reg Date</strong></td>
                                    <td><input type="datetime-local" name="patient_reg_date" required></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <button type="submit" name="submit" class="btn btn-primary">Insert Patient Details</button>
                </form>
            </div>
        </div>
    </div>
</div>

            
</cfoutput>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

                          <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="/includes/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="/includes/assets/vendors/chart.js/chart.umd.js"></script>
    <script src="/includes/assets/vendors/datatables.net/jquery.dataTables.js"></script>
    <!-- <script src="/includes/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script> -->
    <script src="/includes/assets/vendors/datatables.net-bs5/dataTables.bootstrap5.js"></script>
    <script src="/includes/assets/js/dataTables.select.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="/includes/assets/js/off-canvas.js"></script>
    <script src="/includes/assets/js/template.js"></script>
    <script src="/includes/assets/js/settings.js"></script>
    <script src="/includes/assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="/includes/assets/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/includes/assets/js/dashboard.js"></script>
    <!-- <script src="/includes/assets/js/Chart.roundedBarCharts.js"></script> -->
    <!-- End custom js for this page-->
  </body>
</html>