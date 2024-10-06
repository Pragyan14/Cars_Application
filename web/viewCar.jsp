<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Car Listings</title>
    <style>
        * {
            font-family: "Roboto Mono", monospace;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            padding: 10px 20px;
        }
        .navbar .logo {
            font-size: 24px;
            color: white;
        }
        .navbar .nav-links {
            list-style-type: none;
            display: flex;
        }
        .navbar .nav-links li {
            margin-left: 32px;
        }
        .navbar .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            display: flex;
            align-items: center;
        }
        .navbar .nav-links i {
            margin-right: 5px;
            font-size: 20px;
        }
        .navbar .nav-links a:hover {
            color: #ddd;
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
            height: 250px;
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
        .footer {
            margin-top: auto;
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: relative;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="logo">
            <i class="fa-solid fa-ghost"></i>
        </div>
        <ul class="nav-links">
            <li><a href="viewCar.jsp"><i class="fa-solid fa-car"></i>Cars</a></li>
            <li><a href="service.jsp"><i class="fa-solid fa-cogs"></i>Services</a></li>
            <li><a href="profile.jsp"><i class="fa-solid fa-user"></i>Profile</a></li>
        </ul>
    </div>
    <div class="car-container">
        <div class="car">
            <img src="https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Car 1">
            <h2>Mini Copper</h2>
            <p>New York, NY</p>
            <h3>$ 450000</h3>
        </div>
        <div class="car">
            <img src="https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Car 1">
            <h2>Mini Copper</h2>
            <p>New York, NY</p>
            <h3>$ 450000</h3>
        </div>
    </div>
    <div class="footer">
        Made with <i class="fa-solid fa-heart" ></i> by Sreejit, Pragyan, Manish, Rakesh, Shreya
    </div>
</body>
</html>