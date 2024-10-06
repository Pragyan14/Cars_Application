<div class="footer">
    Cars 24/7 | Made with <i class="fa-solid fa-heart" style="color: #87A2FF"></i> by Sreejit, Pragyan, Manish, Rakesh, Shreya
</div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    document.getElementById('logoutBtn').addEventListener('click', function() {
        Swal.fire({
            title: 'Are you sure?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, logout!',
            cancelButtonText: 'Cancel'
        }).then((result) => {
            if (result.isConfirmed) {
                // Redirect to logout servlet or perform logout action
                window.location.href = 'LogoutServlet'; // Adjust this to your logout URL
            }
        });
    });
</script>
