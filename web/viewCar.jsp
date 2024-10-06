<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.vit.pojo.Car" %>
<%@ page import="com.vit.dao.CarDAO" %>
<%
    
    CarDAO carDAO = new CarDAO();
    List<Car> carList; // Declare the carList variable here

    if(request.getParameter("modelName") == null) {
        carList = carDAO.getCars();
    } else {
        carList = carDAO.getCarsbyModel(request.getParameter("modelName")); // Fetch by model
    }

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Car Listings</title>
    <style>
        <jsp:include page="Include/header_footer_css.jsp" />
        * {
            font-family: "Roboto Mono", monospace;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
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
        .searchBar{
            text-align:center;
            margin:16px 0;
        }
        .searchBar input{
            height:32px;
        }
    </style>
</head>
<body>
<jsp:include page="Include/Header.jsp" />
<div>
    <div class="searchBar">
        <form action="" method="get">
            <input type="text" placeholder="Search by model" name="modelName"/>
            <input type="submit" value="Search"/>
        </form>
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
</div>
  

<jsp:include page="Include/Footer.jsp" />
</body>
</html>
