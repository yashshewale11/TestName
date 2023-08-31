<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INNODEEN EMPLOYEE MANAGEMENT</title>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    background-image: url('https://cdn.pixabay.com/photo/2016/11/25/23/15/moon-1859616_1280.jpg'); /* Add the URL of the web image */
    background-size: cover;
    background-position: center;
    transition: background 0.5s ease-in-out;
}

.container {
    width: 100%;
    height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    animation: fadeIn 1s ease-in-out;
}

.title {
    font-size: 36px;
    color: #333;
    margin-bottom: 20px;
    animation: slideUp 1s ease-in-out, changeColor 5s infinite;
}

/* Define a new animation for changing color */
@keyframes changeColor {
    0% {
        color: #333; /* Initial color */
    }
    25% {
        color: #E74C3C; /* Color after 25% of animation duration */
    }
    50% {
        color: #3498DB; /* Color after 50% of animation duration */
    }
    75% {
        color: #2ECC71; /* Color after 75% of animation duration */
    }
    100% {
        color: #8E44AD; /* Final color */
    }
}

.action-links {
    display: flex;
    gap: 20px;
    margin-top: 20px;
    animation: slideUp 1s 0.5s ease-in-out;
}

.action-link {
    padding: 10px 20px;
    background-color: #333;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.action-link:hover {
    background-color: #555;
}

.action-link.signup:hover ~ body {
    background-color: #8E44AD; /* Change background color when hovering over Sign Up */
}

.action-link.signin:hover ~ body {
    background-color: #3498DB; /* Change background color when hovering over Sign In */
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

@keyframes slideUp {
    from {
        transform: translateY(20px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}
</style>
</head>
<body>
    <div class="container">
        <div class="title">Welcome to INNODEEN Employee Management</div>
        <div class="action-links">
            <a class="action-link signup" href="signup.jsp">Sign Up</a>
            <a class="action-link signin" href="signin.jsp">Sign In</a>
        </div>
    </div>
</body>
</html>
