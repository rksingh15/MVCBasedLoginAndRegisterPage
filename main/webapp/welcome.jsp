<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome!</title>
    <style>
       
        :root {
            --primary-color: #007bff;
            --secondary-color: #6c757d;
            --success-color: #28a745;
            --warning-color: #ffc107;
            --danger-color: #dc3545;
            --light-gray: #f8f9fa;
            --dark-gray: #343a40;
            --transition-duration: 0.3s;
            --border-radius: 0.5rem;
            --box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--light-gray);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: var(--dark-gray);
            line-height: 1.6;
        }

        .welcome-container {
            width: 100%;
            max-width: 600px; /* Adjust as needed */
            background-color: #fff;
            padding: 3rem;
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            text-align: center;
        }

        .welcome-container h1 {
            color: var(--primary-color);
            margin-bottom: 1rem;
        }

        .welcome-container p {
            font-size: 1.2rem;
            color: var(--secondary-color);
            margin-bottom: 2rem;
        }

       
    </style>
</head>
<body>
    <div class="welcome-container">
        <h1>Welcome, <%= session.getAttribute("welcome3") %>!</h1>
        <p>You have successfully logged in.</p>
       
        
    </div>
</body>
</html>
