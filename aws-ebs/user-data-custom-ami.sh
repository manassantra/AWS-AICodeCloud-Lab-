#!/bin/bash

# Update the system and install Apache web server
yum update -y
yum install -y httpd

# Start and enable Apache to run on boot
systemctl start httpd
systemctl enable httpd

# Create an index.html file with CSS animations for background color changing
cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MS-AWS | WEB</title>
    <style>
        /* Basic CSS for styling */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
            color: #333;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        main {
            background-color: white;
            padding: 20px;
            margin-top: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        footer {
            text-align: center;
            margin-top: 30px;
            color: #777;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome MS-AWS-LAB Inc. !</h1>
    </header>
    <main>
        <p>This is a basic HTML template ready for your content.</p>
        <p>You can add more paragraphs, images, or other elements here.</p>
    </main>
    <footer>
        <p>&copy; MS-AWS-LAB 2025 : Live Website. | &copy; All rights reserved.</p>
    </footer>
</body>
</html>
EOF

# Ensure the httpd service is correctly set up to start on boot
chkconfig httpd on
