<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Appointments</title>
        <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
        <style>
            /* Container Styling */
.container {
    max-width: 1200px;
    margin: 50px auto; /* Centered container with space around */
    padding: 20px;
    background-color: var(--container-background);
    box-shadow: 0 0 10px var(--shadow-color);
    border-radius: 8px;
}

/* Table Styling */
table {
    width: 100%;
    /* border:1px solid black; */
    border-collapse: collapse;
    margin: 30px 0; /* Space around the table */
    padding: 0; /* No padding directly on the table */
    background-color: var(--container-background);
}

/* Table Borders */
table, th, td {
    border:1px solid rgb(37, 140, 180); /* Thicker border for visibility */
}

th, td {
    padding: 15px; /* Increased padding for better readability */
    text-align: left;
}

th {
    background-color: var(--background-color);
    color: var(--text-color);
    font-weight: bold;
}

td {
    color: rgb(68, 68, 68);
}

/* Zebra Striping */
tr:nth-child(even) {
    background-color: hsl(0, 0%, 98%);
}

tr:nth-child(odd) {
    background-color: var(--container-background);
}

/* Hover Effect */
tr:hover {
    background-color: hsl(0, 0%, 90%);
}

/* Responsive Table */
@media (max-width: 768px) {
    table {
        font-size: 14px;
    }
}

        </style>
    </head>
    <body>
        <button onclick="clickFunction()"><img src="/includes/images/back-button.png"style="width: 30px;"></button>

        <script>
            function clickFunction() {
                window.location.href = "main.src.index.cfm";
            }
        </script>
        <div class="container">
            <h1>Appointment Details</h1>
    
            <!-- Fetch appointment data -->
            <cfquery name="getAppointments">
                SELECT p_id, doctor_name, appointment_date, reason
                FROM appointments
            </cfquery>
            <!--- <cfdump var="#getAppointments#">
            <cfabort> --->
    
            <!-- Display appointments in a table -->
            <table>
                <thead>
                    <tr>
                        <th>Patient ID</th>
                        <th>Doctor Name</th>
                        <th>Appointment Date</th>
                        <th>Reason</th>
                    </tr>
                </thead>
                <tbody>
                    <cfloop query="getAppointments">
                        <tr>
                            <td>#p_id#</td>
                            <td>#doctor_name#</td>
                            <td>#appointment_date#</td>
                            <td>#reason#</td>
                        </tr>
                    </cfloop>
                </tbody>
            </table>
        </div>
    </body>
    </html>
    </cfoutput>
