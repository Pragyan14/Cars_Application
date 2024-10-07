<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.vit.pojo.Car" %>
<%@ page import="com.vit.dao.CarDAO" %>
<%
    if (session == null || session.getAttribute("name") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String userEmail = (String) session.getAttribute("email");
    System.out.println("User email from session: " + userEmail);

    CarDAO carDAO = new CarDAO();
    List<Car> carList = carDAO.getCarsByUserEmail(userEmail);

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        <jsp:include page="Include/header_footer_css.jsp" />
         
        .profile-container {
            display: flex;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            width: 100%;
            width: 100%;
            margin: 20px auto;
            padding: 20px;
        }

        .profile-left {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .profile-circle {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            background-color: #2d87f0;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 36px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .profile-right {
            flex: 2;
            padding: 20px;
        }

        .profile-info {
            margin-bottom: 20px;
        }

        .profile-info p {
            margin: 10px 0;
            font-size: 18px;
        }

        .add-car-button {
            background-color: #4CAF50; 
            color: white; 
            padding: 10px 20px; 
            font-size: 16px; 
            border: none; 
            border-radius: 5px; 
            cursor: pointer; 
            text-decoration: none;
            display: inline-block; 
            text-align: center; 
}

        .add-car-button:hover {
            background-color: #45a049;
        }

        .car-container {
            display: grid; 
            grid-template-columns: repeat(4, 1fr);
            gap: 20px; 
            width: 100%;
            margin: 0 auto;
            height: 90vh;
        }
        
        .car {
            border: 1px solid #ddd; 
            padding: 10px; 
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff; 
            height: 280px;
        }
        
        .car img {
            width: 100%; 
            height: 150px; 
            object-fit: cover;
            border-radius: 10px 10px 0 0; 
        }
        
        .car h2 {
            font-size: 18px;
            margin-top: 10px; 
        }
        
        .car p {
            font-size: 14px; 
            color: #666;
        }

        @media (max-width: 768px) {
            .car-cards-container {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 480px) {
            .car-cards-container {
                grid-template-columns: 1fr; 
            }
        }
    </style>
</head>
<body>
    <jsp:include page="Include/Header.jsp" />

    <div class="profile-container">
        <div class="profile-left">
            <div class="profile-circle">
                <span><%= ((String) session.getAttribute("name")).charAt(0) %></span>
            </div>
        </div>
        <div class="profile-right">
            <div class="profile-info">
                <p><strong>Full Name:</strong> <%= session.getAttribute("name") %></p>
                <p><strong>Email:</strong> <%= session.getAttribute("email") %></p>
                <p><strong>Phone:</strong> <%= session.getAttribute("phone") %></p>
                <p><strong>City:</strong> <%= session.getAttribute("city") %></p>
                <p><strong>State:</strong> <%= session.getAttribute("state") %></p>
            </div>
            <a href="addCar.jsp" class="add-car-button">Add Car</a>
        </div>
    </div>

    <div class="car-container">
        <%
        if (carList != null && !carList.isEmpty()) {
            for (Car car : carList) {
        %>
                <div class="car">
                    <img src="data:image/jpeg;base64,<%= car.getBase64Picture() %>" alt="<%= car.getModel() %>">
                    <h2><%= car.getModel() %></h2>
                    <p><%= car.getColor() %></p>
                    <h3>$ <%= car.getPrice() %></h3>
                    <a href="carDetail.jsp?carId=<%= car.getId() %>">More info..</a>
                </div>
    <%
            }
        } else {
    %>
            <p>No cars available.</p>
    <%
        }
    %>
    </div>

    <jsp:include page="Include/Footer.jsp" />
</body>
</html>