<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Roboto Mono", monospace;
        }
        body {
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            padding: 10px 20px;
            width: 100%;
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
            margin-left: 20px;
        }
        .navbar .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 18px;
        }
        .navbar .nav-links a:hover {
            color: #ddd;
        }
        .car-details {
            display: flex;
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            margin-top: 20px;
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
        .call-option {
            margin-top: 20px;
            text-align: center;
        }
        .call-option button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .call-option button:hover {
            background-color: #45a049;
        }
        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            width: 100%;
            margin-top: auto;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">
        <i class="fa-solid fa-ghost"></i>
    </div>
    <ul class="nav-links">
        <li><a href="#cars"><i class="fa-solid fa-car"></i>Cars</a></li>
        <li><a href="#services"><i class="fa-solid fa-cogs"></i>Services</a></li>
        <li><a href="#profile"><i class="fa-solid fa-user"></i>Profile</a></li>
    </ul>
</div>

<div class="car-details">
    <img src="https://via.placeholder.com/300" alt="Car Image"> 
    <div class="details">
        <h2>Car Model: Toyota Corolla</h2>
        <p><strong>Number:</strong> ABC1234</p>
        <p><strong>Color:</strong> Blue</p>
        <p><strong>Fuel Type:</strong> Petrol</p>
        <p><strong>Km Driven:</strong> 25,000 km</p>
        <p><strong>Gear Type:</strong> Automatic</p>
        <p><strong>Price:</strong> $20,000</p>
        <div class="call-option">
    <button id="callButton" onclick="togglePhoneNumber()">Call</button>
</div>
    </div>
</div>



<script>
    function togglePhoneNumber() {
        const phoneNumber = document.getElementById('phoneNumber');
        if (phoneNumber.style.display === "none") {
            phoneNumber.style.display = "block"; 
        } else {
            phoneNumber.style.display = "none"; 
        }
    }
</script>

<div class="footer">
    Made by Sreejit, Pragyan, Manish, Rakesh, Shreya
</div>

</body>
</html>
