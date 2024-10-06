<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap');
        * {
            font-family: "Roboto Mono", monospace;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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
        .hero {
            background-image: url('https://images.pexels.com/photos/3422964/pexels-photo-3422964.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
            background-size: 100% ;
            background-position: center;
            /* background-color: #243642; */
            color:#243642;
            text-align: center;
            padding: 100px 20px;
            height: 90vh;
            
        }
        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }
        .hero p {
            font-size: 24px;
            max-width: 800px;
            margin: 0 auto;
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

<div class="hero">
    <h1>Welcome to Our Car Company</h1>
    <p>Your trusted partner for quality cars and exceptional services. We believe in delivering the best experience to our customers, ensuring satisfaction at every turn.</p>
</div>

<div class="footer">
    Made with <i class="fa-solid fa-heart" style="color: #87A2FF"></i> by Sreejit, Pragyan, Manish, Rakesh, Shreya
</div>

</body>
</html>
