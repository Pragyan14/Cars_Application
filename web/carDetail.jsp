<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.vit.pojo.Car" %>
<%@ page import="com.vit.dao.CarDAO" %>
<%
    if (session == null || session.getAttribute("name") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    
    CarDAO carDAO = new CarDAO();
    String carIdParam = request.getParameter("carId");
    Car car = carDAO.getCarById(carIdParam);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        <jsp:include page="Include/header_footer_css.jsp" />

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Roboto Mono", monospace;
        }

        html, body {
            height: 100%;
        }

        .container {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .content {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .car-details {
            display: flex;
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
        }

        .car-details img {
            max-width: 300px;
            height: auto;
            border-radius: 8px;
            margin-right: 20px;
        }

        .car-details .details {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .car-details h2 {
            margin: 15px 0;
        }

        .car-details p {
            margin: 5px 0;
            font-size: 16px;
        }

        .mail-option {
            margin-top: 20px;
            text-align: center;
        }

        .mail-option button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .mail-option button:hover {
            background-color: #45a049;
        }

        footer {
            background-color: #f1f1f1;
            padding: 10px;
            text-align: center;
            margin-top: auto;
        }
    </style>
</head>
<body>

    <div class="container">
        <jsp:include page="Include/Header.jsp" />

        <div class="content">
            <%
            if (car != null) {
            %>
            <div class="car-details">
                <img src="data:image/jpeg;base64,<%= car.getBase64Picture() %>" alt="<%= car.getModel() %>">
                <div class="details">
                    <h2>Car Model: <%= car.getModel() %></h2>
                    <p><strong>Number:</strong> <%= car.getRegNum() %></p>
                    <p><strong>Color:</strong> <%= car.getColor() %></p>
                    <p><strong>Fuel Type:</strong> <%= car.getFuel() %></p>
                    <p><strong>Km Driven:</strong> <%= car.getKmDriven() %> km</p>
                    <p><strong>Gear Type:</strong> <%= car.getGear() %></p>
                    <p><strong>Price:</strong> $<%= car.getPrice() %></p>
                    <div class="mail-option">
                        <a href="mailto:<%= car.getUserEmail() %>"><button id="mailButton">Send Mail</button></a>
                    </div>
                </div>
            </div>
            <%
                } else {
            %>
                <p>No car found with the provided ID.</p>
            <%
                }
            %>
        </div>

        <jsp:include page="Include/Footer.jsp" />
    </div>
</body>
</html>
