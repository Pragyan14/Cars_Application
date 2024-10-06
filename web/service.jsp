<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session == null || session.getAttribute("name") == null && session.getAttribute("email") == null) 
    {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Service Request</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        <jsp:include page="Include/header_footer_css.jsp" />
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            padding: 0;
        }
      
        .service-form {
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }
        .service-form h2 {
            margin-bottom: 20px;
            text-align: center;
        }
        .service-form input, .service-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .service-form button {
            background-color: #333;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        .service-form button:hover {
            background-color: #555;
        }
       
    </style>
</head>
<body>

<jsp:include page="Include/Header.jsp" />

<div class="service-form">
    <h2>Request Car Service</h2>
    <form action="RequestServiceServlet" method="post">
        <label for="carModel">Car Model:</label>
        <input type="text" id="carModel" name="carModel" required>

        <label for="problem">Describe the Problem:</label>
        <textarea id="problem" name="problem" rows="4" required></textarea>

        <input type="hidden" value="1" name="userId" />

        <button type="submit">Submit Request</button>
    </form>
</div>

<jsp:include page="Include/Footer.jsp" />

<% if(request.getAttribute("message") != null) { %>
<script>
    Swal.fire({
        icon: "<%= request.getAttribute("alert") %>",
        text: "<%= request.getAttribute("message") %>"
    });
</script>
<% } %>
</body>
</html>