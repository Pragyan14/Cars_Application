
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap');
            
            /* Include external CSS */
            <jsp:include page="Include/header_footer_css.jsp" />

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body, html {
                height: 100%;
                font-family: "Roboto Mono", monospace;
            }

            .container {
                display: flex;
                flex-direction: column;
                min-height: 100vh;
            }

            .content {
                flex-grow: 1;
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: #f0f0f0;
            }

            .login-container {
                background-color: white;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                width: 100%;
                max-width: 400px;
                text-align: center;
            }

            .login-container h2 {
                margin-bottom: 20px;
                font-size: 28px;
            }

            .login-container input[type="email"], .login-container input[type="password"] {
                width: 100%;
                padding: 15px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 8px;
                box-sizing: border-box;
                font-size: 16px;
            }

            .login-container input[type="submit"] {
                width: 100%;
                padding: 15px;
                background-color: #28a745; /* Green background */
                color: white;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                font-size: 18px;
            }

            .login-container input[type="submit"]:hover {
                background-color: #218838; /* Darker green on hover */
            }
 
            .signup-button {
               display: inline-block;
               margin-top: 15px; /* Space above the button */
               padding: 15px;
               width: 100%;
               background-color: #007bff; /* Blue background */
               color: white;
               border: none;
               border-radius: 8px;
               cursor: pointer;
               font-size: 18px;
               text-align: center;
               text-decoration: none; /* Remove underline */
            }

            .signup-button:hover {
                background-color: #0056b3; /* Darker blue on hover */
            }


            .error-message {
                color: red;
                font-size: 14px;
                margin-top: 15px;
            }

            footer {
                background-color: #f1f1f1;
                padding: 10px;
                text-align: center;
                margin-top: auto; /* Push footer to the bottom */
            }

        </style>
    </head>
    <body>
        <div class="container">
            <!-- Include the header -->
            <jsp:include page="Include/Header.jsp" />

            <!-- Main login content -->
            <div class="content">
                <div class="login-container">
                    <h2 class="form-title">Login</h2>
                    <form action="LoginServlet" method="post">
                        <input type="email" id="email" name="email" placeholder="Email" required><br><br>
                        <input type="password" id="password" name="password" placeholder="Password" required><br><br>

                        <input type="submit" value="Login">
                    </form>
                    <a href="signup.jsp" class="signup-button">Sign Up</a>
                    <% String m = (String)request.getAttribute("error");
                       if (m != null) { %>
                        <p style="color:red;"><%= m %></p>
                    <% } %>
                </div>
            </div>

            <!-- Include the footer -->
            <jsp:include page="Include/Footer.jsp" />
        </div>
    </body>
</html>
