<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session == null || session.getAttribute("name") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Car Listing</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <style>
        body {
            font-family: cursive;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        <jsp:include page="Include/header_footer_css.jsp" />
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333; 
        }

        form {
            display: flex; 
            flex-direction: column; 
        }

        label {
            margin-bottom: 5px; 
            color: #666; 
        }

        input[type="text"],
        input[type="file"],
        input[type="number"] {
            padding: 10px;
            margin-bottom: 15px; 
            border: 1px solid #ddd; 
            border-radius: 5px;
            font-size: 14px;
        }

        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none; 
            border-radius: 5px; 
            font-size: 16px; 
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <jsp:include page="Include/Header.jsp" />
    
    <div class="container">
        <h2>Add New Car</h2>
        <form action="AddCarServlet" method="post" enctype="multipart/form-data">
            <label for="carImage">Car Image:</label>
            <input type="file" id="carImage" name="carImage" accept="image/*" required>

            <label for="carModel">Car Model:</label>
            <input type="text" id="carModel" name="carModel" required>

            <label for="regNumber">Reg Number:</label>
            <input type="text" id="regNumber" name="regNumber" required>

            <label for="carColor">Car Color:</label>
            <input type="text" id="carColor" name="carColor" required>

            <label for="fuelType">Fuel Type:</label>
            <input type="text" id="fuelType" name="fuelType" required>

            <label for="kmDriven">KM Driven:</label>
            <input type="number" id="kmDriven" name="kmDriven" required>

            <label for="gearType">Gear Type:</label>
            <input type="text" id="gearType" name="gearType" required>

            <label for="price">Price:</label>
            <input type="number" id="price" name="price" required>

            <button type="submit">Add Car</button>
        </form>
    </div>
    <jsp:include page="Include/Footer.jsp" />
</body>
</html>