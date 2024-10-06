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

    // Create an instance of CarDAO and fetch the cars for the logged-in user
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
         
        /* Profile Section */
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
            background-color: #4CAF50; /* Green background */
            color: white; /* White text */
            padding: 10px 20px; /* Padding for the button */
            font-size: 16px; /* Font size */
            border: none; /* No border */
            border-radius: 5px; /* Rounded corners */
            cursor: pointer; /* Pointer cursor on hover */
            text-decoration: none; /* Remove underline */
            display: inline-block; /* Make it an inline-block for proper spacing */
            text-align: center; /* Center text */
}

        .add-car-button:hover {
            background-color: #45a049;
        }

        /* Car Cards Section */
        .car-container {
            display: grid; /* Use CSS Grid layout */
            grid-template-columns: repeat(4, 1fr); /* 4 equal columns */
            gap: 20px; /* Space between cards */
            width: 100%; /* Limit container width */
            margin: 0 auto; /* Center the grid */
            height: 90vh;
        }
        
        .car {
            border: 1px solid #ddd; /* Border around the card */
            padding: 10px; /* Padding inside the card */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow for depth */
            background-color: #fff; /* Card background color */
            height: 280px;
        }
        
        .car img {
            width: 100%; /* Full width of the card */
            height: 150px; /* Fixed height for images */
            object-fit: cover; /* Cover the entire image area */
            border-radius: 10px 10px 0 0; /* Rounded corners on the top */
        }
        
        .car h2 {
            font-size: 18px; /* Title font size */
            margin-top: 10px; /* Space above title */
        }
        
        .car p {
            font-size: 14px; /* Paragraph font size */
            color: #666; /* Text color */
        }

        @media (max-width: 768px) {
            .car-cards-container {
                grid-template-columns: repeat(2, 1fr); /* Display 2 cards per row on smaller screens */
            }
        }

        @media (max-width: 480px) {
            .car-cards-container {
                grid-template-columns: 1fr; /* Display 1 card per row on very small screens */
            }
        }
    </style>
</head>
<body>
    <jsp:include page="Include/Header.jsp" />

    <!-- Profile Section -->
    <div class="profile-container">
        <div class="profile-left">
            <div class="profile-circle">
                <!-- First name initial, can be dynamic using Java/JSP -->
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
            <!-- Add Car button -->
            <a href="addCar.jsp" class="add-car-button">Add Car</a>
        </div>
    </div>

    <!-- Car Cards Section -->
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