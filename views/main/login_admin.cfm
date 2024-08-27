    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HMS | Login</title>
        <link rel="stylesheet" href="/includes/css/loginadmin.css">
    </head>
    <body>
    <cfoutput>
        <div class="form-container">
            <h2 class="form-title">HMS | Admin Login</h2>
            <form action="#event.buildLink('Main/loginadmin')#" method="post">
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
                <!--- <a href="" class="btn-forgot-password">Forgot Password?</a> --->
                <!-- Uncomment if needed
                <div class="form-footer">
                    <a href="register_patient.cfm">Don't have an account? Register here</a>
                </div>
                -->
            </form>
        </div>
        </cfoutput>
    </body>
    </html>

