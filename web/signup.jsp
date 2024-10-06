<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <style>
        body {
            font-family: cursive;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .signup-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 500px;
        }
        .signup-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .signup-form input {
            width: 60%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-left: 100px;
        }
        .signup-form button {
            width: 65%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 100px;
        }
        .signup-form button:hover {
            background-color: #45a049;
        }
        .error-message {
            font-family: verdana;
            color: red;
            text-align: center;
            margin-top: 10px;
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
            <p class="error-message"><%= m %></p>
        <% } %>
    </div>

</body>
</html>