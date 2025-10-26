<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style >

/* General Styles */
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
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Modern, clean font */
  background-color: var(--light-gray);
  margin: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  color: var(--dark-gray); /* Dark text for readability */
  line-height: 1.6; /* Improved line spacing */
}

/* Login Container Styles */
.login-container {
  width: 100%; /* Make it responsive */
  max-width: 450px; /* Limit width on larger screens */
  background-color: #fff;
  padding: 3rem; /* Increased padding */
  border-radius: var(--border-radius);
  box-shadow: var(--box-shadow);
  transition: transform var(--transition-duration) ease-in-out, box-shadow var(--transition-duration) ease-in-out;
  overflow: hidden; /* Clip any overflowing content */
  position: relative; /* For absolute positioning of the gradient */
}

.login-container::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 10px;
    background: linear-gradient(to right, var(--primary-color), var(--success-color)); /* Gradient top border */
}

.login-container:hover {
  transform: translateY(-0.5rem);
  box-shadow: 0 0.75rem 1.5rem rgba(0, 0, 0, 0.2); /* Enhanced shadow on hover */
}

/* Form Styles */
.login-form h1 {
  text-align: center;
  margin-bottom: 2rem;
  color: var(--primary-color); /* Use primary color for the heading */
  font-weight: 600; /* Semi-bold font weight */
  letter-spacing: 0.5px; /* Subtle letter spacing */
}

.input-group {
  margin-bottom: 2.5rem; /* Increased spacing */
}

.input-group label {
  display: block;
  margin-bottom: 0.75rem;
  font-weight: 500;
  color: var(--secondary-color);
  transition: color var(--transition-duration) ease-in-out;
}

.input-group input[type="email"],
.input-group input[type="password"] {
  width: 100%;
  padding: 1.25rem;
  border: 1px solid #ced4da; /* Light gray border */
  border-radius: var(--border-radius);
  box-sizing: border-box;
  font-size: 1rem;
  transition: border-color var(--transition-duration) ease-in-out, box-shadow var(--transition-duration) ease-in-out;
}

.input-group input[type="email"]:focus,
.input-group input[type="password"]:focus {
  border-color: var(--primary-color);
  outline: none;
  box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25); /* Subtle blue focus shadow */
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
  background-color: #0056b3; /* Darker shade on hover */
  transform: translateY(-0.25rem); /* Slight lift on hover */
}

button[type="submit"]:active {
    transform: translateY(0); /* No lift when clicked */
    box-shadow: 0 0.25rem 0.5rem rgba(0, 0, 0, 0.15); /* Reduced shadow when clicked */
}


/* Sign-up Link Styles */
.signup-link {
  text-align: center;
  margin-top: 2rem;
}

.signup-link a {
  color: var(--primary-color);
  text-decoration: none;
  font-weight: 600;
  transition: color var(--transition-duration) ease-in-out;
}

.signup-link a:hover {
  text-decoration: underline;
  color: #0056b3; /* Darker shade on hover */
}

/* Responsive Design */
@media (max-width: 768px) {
  .login-container {
    padding: 2rem;
    max-width: 90%; /* Take up more width on smaller screens */
  }

  .login-form h1 {
    font-size: 2rem;
  }
  .success-message {
    color: var(--success-color);
    text-align: center;
    margin-top: 1rem;
    font-weight: 500;
}

  .input-group {
    margin-bottom: 2rem;
  }

  button[type="submit"] {
    font-size: 1rem;
  }
}

/* Keyframe Animations (Optional - Add to the before pseudo-element) */
@keyframes gradientAnimation {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}



</style>
</head>
<body>

<div class="login-container">
    <div class="login-form">
        <h1>Login</h1>
        <form action="login" method="post">  
            <div class="input-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
            
           
            <div class="signup-link">
                Don't have an account? <a href="registerPage.jsp">Sign up</a>
                
            </div>
                         <%
        String msg = (String) session.getAttribute("link2");
        if (msg != null) {
        %>
            <div class="success-message"><%=msg%></div>
        <%
            session.removeAttribute("link2");
        }
        %>
            
        </form>
    </div>
</div>

</body>
</html>
