<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HMS | Patient Login</title>
        <link rel="stylesheet" href="/includes/css/loginpatient.css">
    </head>
    <body>
        <div class="form-container">
            <h2 class="form-title">HMS | Patient Login</h2>
            <form action="#event.buildLink('Main/loginPatient')#" method="post">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="submit-btn">Login</button>
                </div>
                <div class="form-footer">
                    <a href="Main/register_patient">Don't have an account? Register here</a>
                </div>
            </form>
        </div>
    </body>
    </html>
    </cfoutput>
    