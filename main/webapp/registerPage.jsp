<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
    <style >
    /* General Styles (Consistent with Login Page) */
:root {
    --primary-color: #007bff;        /* A vibrant blue */
    --secondary-color: #6c757d;      /* A softer gray */
    --success-color: #28a745;        /* Success green */
    --warning-color: #ffc107;        /* Warning yellow */
    --danger-color: #dc3545;         /* Error red */
    --light-gray: #f8f9fa;          /* Very light background */
    --dark-gray: #343a40;           /* Dark background */
    --transition-duration: 0.3s;   /* Standard transition duration */
    --border-radius: 0.5rem;        /* Standard border radius */
    --box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15); /* Subtle shadow */
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

/* Register Container Styles */
.register-container {
    width: 100%;
    max-width: 450px;
    background-color: #fff;
    padding: 3rem;
    border-radius: var(--border-radius);
    box-shadow: var(--box-shadow);
    transition: transform var(--transition-duration) ease-in-out, box-shadow var(--transition-duration) ease-in-out;
    position: relative;
    overflow: hidden;
}

.register-container::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 10px;
    background: linear-gradient(to right, var(--primary-color), var(--success-color));
}

.register-container:hover {
    transform: translateY(-0.5rem);
    box-shadow: 0 0.75rem 1.5rem rgba(0, 0, 0, 0.2);
}

/* Form Styles */
h2 {
    text-align: center;
    margin-bottom: 2rem;
    color: var(--primary-color);
    font-weight: 600;
    letter-spacing: 0.5px;
}

.input-group {
    margin-bottom: 2.5rem;
}

.input-group label {
    display: block;
    margin-bottom: 0.75rem;
    font-weight: 500;
    color: var(--secondary-color);
    transition: color var(--transition-duration) ease-in-out;
}

.input-group input[type="text"],
.input-group input[type="email"],
.input-group input[type="password"],
.input-group select {
    width: 100%;
    padding: 1.25rem;
    border: 1px solid #ced4da;
    border-radius: var(--border-radius);
    box-sizing: border-box;
    font-size: 1rem;
    transition: border-color var(--transition-duration) ease-in-out, box-shadow var(--transition-duration) ease-in-out;
}

.input-group input[type="text"]:focus,
.input-group input[type="email"]:focus,
.input-group input[type="password"]:focus,
.input-group select:focus {
    border-color: var(--primary-color);
    outline: none;
    box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}

/* Button Styles */
button[type="submit"] {
    background-color: var(--primary-color);
    color: white;
    padding: 1.25rem 2rem;
    border: none;
    border-radius: var(--border-radius);
    cursor: pointer;
    width: 100%;
    font-size: 1.1rem;
    font-weight: 500;
    transition: background-color var(--transition-duration) ease-in-out, transform var(--transition-duration) ease-in-out;
    box-shadow: var(--box-shadow);
}

button[type="submit"]:hover {
    background-color: #0056b3;
    transform: translateY(-0.25rem);
}

button[type="submit"]:active {
    transform: translateY(0); /* No lift when clicked */
    box-shadow: 0 0.25rem 0.5rem rgba(0, 0, 0, 0.15); /* Reduced shadow when clicked */
}

/* Success Message */
.success-message {
    color: var(--success-color);
    text-align: center;
    margin-top: 1rem;
    font-weight: 500;
}

/* Login Button */
.login-button {
    background-color: var(--secondary-color);
    color: white;
    padding: 1rem 1.5rem;
    border: none;
    border-radius: var(--border-radius);
    cursor: pointer;
    width: 100%;
    font-size: 1rem;
    margin-top: 1.5rem;
    transition: background-color var(--transition-duration) ease-in-out, transform var(--transition-duration) ease-in-out;
    box-shadow: var(--box-shadow);
}

.login-button:hover {
    background-color: #545b62;
    transform: translateY(-0.25rem);
}
.login-button:active {
    transform: translateY(0); /* No lift when clicked */
    box-shadow: 0 0.25rem 0.5rem rgba(0, 0, 0, 0.15); /* Reduced shadow when clicked */
}


/* Responsive Design */
@media (max-width: 768px) {
    .register-container {
        padding: 2rem;
        max-width: 90%;
    }

    h2 {
        font-size: 2rem;
    }

    .input-group {
        margin-bottom: 2rem;
    }

    button[type="submit"], .login-button {
        font-size: 1rem;
    }
}
    
    
    
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Create Account</h2>
        <form action="registerForm" method="post">
            <div class="input-group">
                <label for="name">Full Name:</label>
                <input type="text" name="name" id="name" required>
            </div>
            <div class="input-group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" required>
            </div>
            <div class="input-group">
                <label for="gender">Gender:</label>
                <select name="gender" id="gender" required>
                    <option value="">-- Select Gender --</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>
            <div class="input-group">
                <label for="city">City:</label>
                <input type="text" name="city" id="city" required>
            </div>
            <button type="submit">Register</button>
        </form>

        <%
        String msg = (String) session.getAttribute("msg");
        if (msg != null) {
        %>
            <div class="success-message"><%=msg%></div>
        <%
            session.removeAttribute("msg");
        }
        %>

        <button class="login-button" onclick="location.href='Login.jsp'">Login</button>
    </div>
</body>
</html>
