<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Book Appointment</title>
        <link rel="stylesheet" href="/includes/css/appointment.css">
    </head>
    <body>
        <div class="container">
            <h1>Book an Appointment</h1>
            <cfif structKeyExists(form, "submitBtn")>
                <!-- Form Submission Logic -->
                <cfquery name="bookAppointment">
                    INSERT INTO appointments (p_id, doctor_name, appointment_date, reason)
                    VALUES (
                        <cfqueryparam value="#form.patient_id#" cfsqltype="cf_sql_integer">,
                        <cfqueryparam value="#form.doctor_name#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#form.appointment_date#" cfsqltype="cf_sql_date">,
                        <cfqueryparam value="#form.reason#" cfsqltype="cf_sql_varchar">
                    )
                </cfquery>
               
                <cfset message = "Appointment booked successfully!">
                <cflocation url="main.PatientDashboard.cfm">
            </cfif>
    
            <!-- Appointment Booking Form -->
            <form action="#event.buildLink("Main/bookAppointment")#" method="post">
                <div class="form-group">
                    <label for="patient_id">Patient ID:</label>
                    <input type="text" id="patient_id" name="patient_id" required>
                </div>
                <div class="form-group">
                    <label for="doctor_name">Doctor name:</label>
                  
                    <select id="doctor_name" name="doctor_name">
                        <option value="raj">raj</option>
                        <option value="jatin">jatin</option>
                        <option value="jj">jj</option>
                       
                      </select>
                </div>
                <div class="form-group">
                    <label for="appointment_date">Appointment Date:</label>
                    <input type="date" id="appointment_date" name="appointment_date" required>
                </div>
                <div class="form-group">
                    <label for="reason">Reason for Appointment:</label>
                    <input type="text" id="reason" name="reason" required>
                </div>
                <div class="form-group">
                    <input type="submit" name="submitBtn" value="Book Appointment">
                </div>
            </form>
        </div>
    </cfoutput>
    </body>
    </html>
    