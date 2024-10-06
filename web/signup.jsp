<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   
    <style>
        
        body, html {
            height: 100%;
            display: flex;
            flex-direction: column;
            margin: 0;
            padding: 0;
        }
        <jsp:include page="Include/header_footer_css.jsp" />

        .signup-form {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f2f2f2;
            padding: 20px;
        }
        .signup-form form {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }
        .signup-form h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .signup-form input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        .signup-form button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 18px;
        }
        .signup-form button:hover {
            background-color: #45a049;
        }
        .error-message {
            color: red;
            margin-top: 10px;
        }

        @media (max-width: 600px) {
            .signup-form form {
                padding: 20px;
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <div class="signup-form">
        <h2>Signup</h2>
        <form action="SignUpServlet" method="post">
            <input type="text" name="name" placeholder="Name" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="tel" name="number" placeholder="Phone Number" required>
            <input type="text" name="city" placeholder="City" required>
            <input type="text" name="state" placeholder="State" required>
            <button type="submit">Sign Up</button>
        </form>
        <% String m = (String)request.getAttribute("error");
           if (m != null) { %>
            <p style="color:red"><%= m %></p>
        <% } %>
    </div>
    <jsp:include page="Include/Footer.jsp" />
</body>
</html>