<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HMS | Patient Registration</title>
        <link rel="stylesheet" href="/includes/css/registerpatient.css">
       
    </head>
    <body>
        <div class="form-container">
            <h2 class="form-title">HMS | Patient Registration</h2>
            <form action="#event.buildLink('Main/registerPatient')#" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="fname">Full Name</label>
                    <input type="text" id="fname" name="fname" required>
                </div>
                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" id="address" name="address" required>
                </div>
                <div class="form-group">
                    <label for="city">City</label>
                    <input type="text" id="city" name="city" required>
                </div>
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <select id="gender" name="gender" required>
                        <option value="option">select</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="image">Upload Image</label>
                    <input type="file" class="form-control" name="image"   required>
                  </div>
                <div class="form-group">
                    <button type="submit" class="submit-btn">Submit</button>
                </div>
                <div class="form-footer">
                    <a href="Main/loginHandler_patient">Already have an account? Login</a>
                </div>
                  
            </form>
        </div>
    </body>
    </html>
    </cfoutput>
    