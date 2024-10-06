<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Car Listing</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <style>
        body {
            font-family: cursive; /* Set a base font */
            background-color: #f9f9f9; /* Light background color */
            margin: 0; /* Remove default margin */
            padding: 0; /* Add padding around the body */
        }
        <jsp:include page="Include/header_footer_css.jsp" />
        .container {
            max-width: 600px; /* Limit container width */
            margin: 0 auto; /* Center the form */
            background-color: #fff; /* White background for the form */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow for depth */
            padding: 20px; /* Padding inside the container */
        }

        h2 {
            text-align: center; /* Center the title */
            color: #333; /* Title color */
        }

        form {
            display: flex; /* Use flexbox for layout */
            flex-direction: column; /* Stack form elements vertically */
        }

        label {
            margin-bottom: 5px; /* Space between label and input */
            color: #666; /* Label color */
        }

        input[type="text"],
        input[type="file"],
        input[type="number"] {
            padding: 10px; /* Padding inside input fields */
            margin-bottom: 15px; /* Space below input fields */
            border: 1px solid #ddd; /* Border around input fields */
            border-radius: 5px; /* Rounded corners */
            font-size: 14px; /* Font size for input fields */
        }

        button {
            padding: 10px; /* Padding inside button */
            background-color: #4CAF50; /* Green background */
            color: white; /* White text */
            border: none; /* Remove border */
            border-radius: 5px; /* Rounded corners */
            font-size: 16px; /* Font size for button */
            cursor: pointer; /* Pointer cursor on hover */
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