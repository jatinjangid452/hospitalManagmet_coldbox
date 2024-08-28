/**
 * I am a new service
 */
component singleton {

	// DI

	/**
	 * Constructor
	 */
	AddService function init(){
		
		return this;
	}

	/**
	 * getAll
	 */
 

        // Function to add patient details
        public any function addPatient(patientDetails) {
            try {
                var insertQuery = new Query();
               
    
                insertQuery.setSQL("
                    INSERT INTO patient_details (
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
                        :patient_name,
                        :patient_email,
                        :patient_mobile,
                        :patient_address,
                        :patient_gender,
                        :patient_age,
                        :patient_medical_history,
                        :patient_reg_date
                    )
                ");
    
                insertQuery.addParam(name="patient_name", value=patientDetails.patient_name, cfsqltype="cf_sql_varchar", maxlength=100);
                insertQuery.addParam(name="patient_email", value=patientDetails.patient_email, cfsqltype="cf_sql_varchar", maxlength=100);
                insertQuery.addParam(name="patient_mobile", value=patientDetails.patient_mobile, cfsqltype="cf_sql_varchar", maxlength=100);
                insertQuery.addParam(name="patient_address", value=patientDetails.patient_address, cfsqltype="cf_sql_varchar", maxlength=100);
                insertQuery.addParam(name="patient_gender", value=patientDetails.patient_gender, cfsqltype="cf_sql_varchar", maxlength=100);
                insertQuery.addParam(name="patient_age", value=patientDetails.patient_age, cfsqltype="cf_sql_integer");
                insertQuery.addParam(name="patient_medical_history", value=patientDetails.patient_medical_history, cfsqltype="cf_sql_varchar", maxlength=100);
                insertQuery.addParam(name="patient_reg_date", value=patientDetails.patient_reg_date, cfsqltype="cf_sql_timestamp");
    
                insertQuery.execute();
    
                return {success=true, message="Patient details inserted successfully."};
    
            } catch (any e) {
                return {success=false, message="Error inserting patient details: " & e.message};
            }
        }

    




    
    public any function checkAdmin(email, password){
        email = trim(arguments.email);
        password = trim(arguments.password);
        var checkAdmin = queryExecute("
         SELECT id, email, password
         FROM admin_login
        WHERE email = :email
        AND password = :password
        ", {
            email = {value=email, cfsqltype="cf_sql_varchar", maxlength=100},
            password = {value=password, cfsqltype="cf_sql_varchar", maxlength=100}
        });
    
        return checkAdmin;
    }
    public any function checkDoctor(email, password) {
        email = trim(arguments.email);
        password = trim(arguments.password);
    
        var checkDoctor = queryExecute("
            SELECT *
            FROM doctor_login
            WHERE email = :email
            AND password = :password
        ", {
            email = {value=email, cfsqltype="cf_sql_varchar", maxlength=100},
            password = {value=password, cfsqltype="cf_sql_varchar", maxlength=100}
        });
    
        return checkDoctor;
    }
    
	public boolean function updateDoctorPassword(required numeric doctorID, required string currentPassword, required string newPassword) {
        var currentPassCheck = queryExecute(
            "SELECT password FROM doctor_login WHERE id1 = :doctorID",
            { doctorID : { value=arguments.doctorID, cfsqltype="cf_sql_integer" } }
        );

        // Check if the current password matches
        if (currentPassCheck.recordCount > 0 AND currentPassCheck.password == arguments.currentPassword) {
            // Update the password
            queryExecute(
                "UPDATE doctor_login SET password = :newPassword WHERE id1 = :doctorID",
                {
                    newPassword : { value=arguments.newPassword, cfsqltype="cf_sql_varchar" },
                    doctorID : { value=arguments.doctorID, cfsqltype="cf_sql_integer" }
                }
            );
            return true; // Password updated successfully
        }

    
    }

	public any function checkPatient(email, password) {
        // Trim the email and password inputs
        email = trim(arguments.email);
        password = trim(arguments.password);

        // Query to check if the email and password exist in the database
        var checkPatient = queryExecute("
            SELECT *
            FROM register_patient
            WHERE email = :email
            AND password = :password
            ", {
                email = {value=email, cfsqltype="cf_sql_varchar", maxlength=100},
                password = {value=password, cfsqltype="cf_sql_varchar", maxlength=100}
            }
        );
        public any function addPatient(fname, address, city, gender, email, password) {
            try {
            var insertPatient = queryExecute("INSERT INTO register_patient (fname, address, city, gender, email, password)
                VALUES (:fname, :address, :city, :gender, :email, :password)", 
                {
                    fname = {value=fname, cfsqltype="cf_sql_varchar", maxlength=100},
                    address = {value=address, cfsqltype="cf_sql_varchar", maxlength=100},
                    city = {value=city, cfsqltype="cf_sql_varchar", maxlength=100},
                    gender = {value=gender, cfsqltype="cf_sql_varchar", maxlength=10},
                    email = {value=email, cfsqltype="cf_sql_varchar", maxlength=100},
                    password = {value=password, cfsqltype="cf_sql_varchar", maxlength=100}
                });
            
                return insertPatient.recordCount; // Return true if the insertion was successful
    
            } catch (any e) {
                // Log the error and return false
                writeLog(text="Error inserting patient: #e.message#", type="error");
                return false;
            }
        }
        // Return the result of the query
        return checkPatient;
    }


}