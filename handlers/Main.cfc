component extends="coldbox.system.EventHandler" {
	property name="jatin" inject="AddService";
	/**
	 * Default Action
	 */
	function index( event, rc, prc ){
		prc.welcomeMessage = "Welcome to ColdBox!";
		event.setView( "main/index" );
	}
	function bookAppointment( event, rc, prc ){
		event.setView( "main/bookAppointment" );
	}
	function appointment( event, rc, prc ){
		event.setView( "main/bookAppointment" );
	}

	/**
	 * Produce some restfulf data
	 */
	function data( event, rc, prc ){
		return [
			{ "id" : createUUID(), "name" : "Luis" },
			{ "id" : createUUID(), "name" : "Joe" },
			{ "id" : createUUID(), "name" : "Bob" },
			{ "id" : createUUID(), "name" : "Darth" }
		];
	}
	function PatientDashboard(event, rc, prc){
		event.setview("views\main\PatientDashboard")
	}
	function jatin(event, rc, prc){
		event.setview("main/doctor/src/pages/icons/profile")
	}
	function appoint(event, rc, prc){
		event.setview("main/doctor/src/pages/ui-features/appointment")
	}
	function patientpage(event, rc, prc){
		event.setview("main/doctor/src/pages/forms/Patient")
	}
	
	function passwordChange(event, rc, prc){
		event.setview("main/doctor/src/index")
	}
	function doctorManagement(event, rc, prc){
		event.setview("main/src/pages/ui-features/doctor_management");
		
	}
	function Patinetdetails(event, rc, prc){
		event.setview("main/src/pages/forms/patient_details")
	}
	function appoints(event, rc, prc){
		event.setview("main/src/pages/charts/appointment")
	}
	function reports(event, rc, prc){
		event.setview("main/src/pages/icons/report")
	}
	function save(event, rc, prc){
		event.setview("main/src/pages/ui-features/doctor_management")
	}
	function Adminpass(event, rc, prc){
		event.setview("main/src/pages/password/password")
	}
	

	// public void function doctorManagement(event, rc, prc) {
    //     // Get the doctor_id from the URL
    //     var doctorID = event.getValue("doctor_id", 0);
    //     if (doctorID != 0) {
    //         // Fetch the doctor details based on doctorID
    //         prc.doctorDetails = doctorService.getDoctorByID(doctorID);
    //     }

    //     event.setView("main/doctor/src/doctor_management");
    // }

	function insertPatient(event, rc, prc) {
		// Check if the form has been submitted
		if (structKeyExists(rc, "submit")) {
			// Insert the patient details into the database
			var insertQuery = "
				INSERT INTO patinet_details (
					`Patient Name`,
					`Patient Email`,
					`Patient Mobile Number`,
					`Patient Address`,
					`Patient Gender`,
					`Patient Age`,
					`Patient Medical History (if any)`,
					`Patient Reg Date`
				) VALUES (
					:patientName,
					:patientEmail,
					:patientMobile,
					:patientAddress,
					:patientGender,
					:patientAge,
					:patientMedicalHistory,
					:patientRegDate
				)
			";
			
			queryExecute(
				insertQuery,
				{
					patientName = {value = rc.patient_name, cfsqltype = "cf_sql_varchar", maxlength = 100},
					patientEmail = {value = rc.patient_email, cfsqltype = "cf_sql_varchar", maxlength = 100},
					patientMobile = {value = rc.patient_mobile, cfsqltype = "cf_sql_varchar", maxlength = 100},
					patientAddress = {value = rc.patient_address, cfsqltype = "cf_sql_varchar", maxlength = 100},
					patientGender = {value = rc.patient_gender, cfsqltype = "cf_sql_varchar", maxlength = 100},
					patientAge = {value = rc.patient_age, cfsqltype = "cf_sql_integer"},
					patientMedicalHistory = {value = rc.patient_medical_history, cfsqltype = "cf_sql_varchar", maxlength = 100},
					patientRegDate = {value = rc.patient_reg_date, cfsqltype = "cf_sql_timestamp"}
				}
			);
	
			// Redirect to the patient page after insertion
			event.setview("main/doctor/src/pages/forms/Patient")
			
		}
		
	}
	






	function form(event, rc, prc){
		event.setview("views\main\form")
	}

	function pass(event, rc, prc){
		event.setview("main/doctor/src/pages/tables/form")
	}
	
	function indexpage(event, rc, prc) {
		// writedump(rc);
		// abort;
		// Check if the form has been submitted
		if (structKeyExists(rc, "submit")) {
			// Call the function to update the password
			var isUpdated = jatin.updateDoctorPassword(
				doctorID = session.DoctorID,
				currentPassword = trim(rc.currentPassword),
				newPassword = trim(rc.newPassword)
			);
	
			// If the password update is successful
			if (isUpdated) {
				// Update the session password
				session.password = trim(rc.newPassword);
	
				// Redirect to the dashboard or the appropriate view
				event.setView("main/doctor/src/index");
			} else {
				// Handle the case where the password update fails (e.g., incorrect current password)
				event.setView("main/doctor/src/password"); // This should point to your password form view
			}
		} else {
			// If the form was not submitted, just show the password form
			event.setView("main/doctor/src/password");
		}
	}
	
// update password for doctor
// edit button
public void function editbutton(event, rc, prc) {
    // Check if the form has been submitted
    if (structKeyExists(rc, "submit")) {
        // Update the patient data in the database
        queryExecute(
            "UPDATE patinet_details 
             SET `Patient Name` = :PatientName, 
                 `Patient Email` = :PatientEmail, 
                 `Patient Mobile Number` = :PatientMobileNumber, 
                 `Patient Address` = :PatientAddress, 
                 `Patient Gender` = :PatientGender, 
                 `Patient Age` = :PatientAge, 
                 `Patient Medical History (if any)` = :PatientMedicalHistory
             WHERE id = :id",
            {
                PatientName={value=rc.PatientName, cfsqltype="cf_sql_varchar"},
                PatientEmail={value=rc.PatientEmail, cfsqltype="cf_sql_varchar"},
                PatientMobileNumber={value=rc.PatientMobileNumber, cfsqltype="cf_sql_varchar"},
                PatientAddress={value=rc.PatientAddress, cfsqltype="cf_sql_varchar"},
                PatientGender={value=rc.PatientGender, cfsqltype="cf_sql_varchar"},
                PatientAge={value=rc.PatientAge, cfsqltype="cf_sql_integer"},
                PatientMedicalHistory={value=rc.PatientMedicalHistory, cfsqltype="cf_sql_varchar"},
                id={value=rc.id, cfsqltype="cf_sql_integer"}
            }
        );

        // Redirect to a confirmation or list page after update
        event.setView("main/doctor/src/pages/forms/patient");

    } else if (structKeyExists(rc, "id")) {
        // Fetch the patient data for editing
        rc.getPatient = queryExecute(
            "SELECT * FROM patinet_details WHERE id = :id",
            {id={value=rc.id, cfsqltype="cf_sql_integer"}}
        );

        // Set action to edit
        rc.action = "edit";
    }

    // Render the view
    event.setview("main/doctor/src/pages/forms/patient");
}


	
// login all 
public any function loginadmin(event, rc, prc){
	var email = trim(rc.email);
	var password = trim(rc.password);
	var checkAdmin=jatin.checkAdmin(email, password);
	if(checkAdmin.recordCount EQ 1){

	SESSION.adminID = checkAdmin.id;
	SESSION.email = checkAdmin.email;
	SESSION.password = checkAdmin.password;
	event.setView("main/src/index");
}
else {
	
	writeOutput("
		<script>
			alert('Invalid email or password. Please try again.');
			history.back();
		</script>
	");
}
}

	public any function logindoctor(event, rc, prc) {
		var email = trim(rc.email);
		var password = trim(rc.password);
	
		// Call the checkDoctor function and store the result
		var checkDoctor = jatin.checkDoctor(email, password);
	
		// Check if the query returned any records
		if (checkDoctor.recordcount EQ 1) {
			// Set session variables based on the result
			SESSION.DoctorID = checkDoctor.id1;  // Use the actual column name 'id1'
			SESSION.dn = checkDoctor.doctor_name;
			SESSION.email = checkDoctor.email;
			SESSION.password = checkDoctor.password;
			// writedump(SESSION);
			// abort;
			// Redirect to the doctor dashboard
			event.setView("main/doctor/src/index");
		} else {
			// Output the script to display an alert and go back in history
			writeOutput("
				<script>
					alert('Invalid email or password. Please try again.');
					history.back();
				</script>
			");
		}
	}
	
	public any function loginPatient(event, rc, prc){
		// Retrieve and trim email and password from the form
		var email = trim(rc.email);
		var password = trim(rc.password);
	
		// Call the checkPatient function from addservice.cfc to validate the credentials
		var checkPatient = jatin.checkPatient(email, password);
	
		// If a record is found, set session variables and redirect to the dashboard
		if (checkPatient.recordcount EQ 1) {
			SESSION.patientID = checkPatient.p_id;
			SESSION.fname = checkPatient.fname;
            SESSION.address = checkPatient.address
            SESSION.city = checkPatient.city
            SESSION.gender = checkPatient.gender
            SESSION.email = checkPatient.email
            SESSION.password = checkPatient.password
			location(url="PatientDashboard.cfm", addToken=false);
			
		} else {
			// Output the script to display an alert and go back in history
			writeOutput("
				<script>
					alert('Invalid email or password. Please try again.');
					history.back();
				</script>
			");
		}
	}
	
	public any function registerPatient(event, rc, prc) {
        // Collect and trim the form data
        var fname = trim(rc.fname);
        var address = trim(rc.address);
        var city = trim(rc.city);
        var gender = trim(rc.gender);
        var email = trim(rc.email);
        var password = trim(rc.password);

        var result = jatin.addPatient(fname, address, city, gender, email, password);

        // Check the result and redirect or show a message
        if (result) {
        SESSION.email = email;
           
            event.setView("login_patient.cfm");
        } else {
            // Show an error message if registration failed
            writeOutput("
                <script>
                    alert('Registration failed. Please try again.');
                    history.back();
                </script>
            ");
        }
    }
	
	

    // Function to handle for login
	function loginHandler_admin(event, rc, prc){
		event.setview("views\main\login_admin")
	}
	function loginHandler_doctor(event, rc, prc){
		event.setview("views\main\login_doctor")
	}
	function loginHandler_patient(event, rc, prc){
		event.setview("views\main\login_patient")
	}
	function registerHandler_patient(event, rc, prc){
		event.setview("views\main\register_patient")
	}
	function doctor_Dashboard(event, rc, prc){
		event.setview("views\doctor\src\index")
	}

	/**
	 * Relocation example
	 */
	function doSomething( event, rc, prc ){
		relocate( "main.index" );
	}

	/**
	 * --------------------------------------------------------------------------
	 * Implicit Actions
	 * --------------------------------------------------------------------------
	 * All the implicit actions below MUST be declared in the config/Coldbox.cfc in order to fire.
	 * https://coldbox.ortusbooks.com/getting-started/configuration/coldbox.cfc/configuration-directives/coldbox#implicit-event-settings
	 */

	function onAppInit( event, rc, prc ){
	}

	function onRequestStart( event, rc, prc ){
	}

	function onRequestEnd( event, rc, prc ){
	}

	function onSessionStart( event, rc, prc ){
	}

	function onSessionEnd( event, rc, prc ){
		var sessionScope     = event.getValue( "sessionReference" );
		var applicationScope = event.getValue( "applicationReference" );
	}

	function onException( event, rc, prc ){
		event.setHTTPHeader( statusCode = 500 );
		// Grab Exception From private request collection, placed by ColdBox Exception Handling
		var exception = prc.exception;
		// Place exception handler below:
	}

}
