<cfoutput>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HMS | Doctor Login</title>
    <link rel="stylesheet" href="/includes/css/logindoctor.css">
</head>
<body>
    <div class="form-container">
        <h2 class="form-title">HMS | Doctor Login</h2>
        <form action="#event.buildLink('Main/logindoctor')#" method="post">
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
        </form>
    </div>
</body>
</html>
</cfoutput>