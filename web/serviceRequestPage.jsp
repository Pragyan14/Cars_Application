<!DOCTYPE html>
<html>
<head>
    <title>Service Request</title>
    <script>
        window.onload = function() {
            const urlParams = new URLSearchParams(window.location.search);
            const message = urlParams.get('message');

            if (message === 'success') {
                alert('Service request submitted successfully!');
            } else if (message === 'failure') {
                alert('Failed to submit the service request.');
            } else if (message === 'error') {
                alert('An error occurred while processing your request.');
            }
        }
    </script>
</head>
<body>

    <a href="index.jsp">HOME</a>

</body>
</html>
