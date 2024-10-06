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

        footer {
            background-color: #f1f1f1;
            padding: 10px;
            text-align: center;
            margin-top: auto; /* Push footer to the bottom */
        }
    </style>
</head>
<body>

    <div class="container">
        <jsp:include page="Include/Header.jsp" />

        <div class="content">
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
        </div>

        <jsp:include page="Include/Footer.jsp" />
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

</body>
</html>