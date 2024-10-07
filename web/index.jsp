<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        <jsp:include page="Include/header_footer_css.jsp" />
        .hero {
            background-image: url('https://images.pexels.com/photos/3422964/pexels-photo-3422964.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
            background-size: 100% ;
            background-position: center;
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
    </style>
</head>
<body>

<jsp:include page="Include/Header.jsp" />

<div class="hero">
    <h1>Welcome to Our Car Company</h1>
    <p>Your trusted partner for quality cars and exceptional services. We believe in delivering the best experience to our customers, ensuring satisfaction at every turn.</p>
</div>

<jsp:include page="Include/Footer.jsp" />

</body>
</html>