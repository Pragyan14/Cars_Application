<div class="footer">
    &copy; Cars 24/7 | Made with <i class="fa-solid fa-heart" style="color: #87A2FF"></i> by Sreejit, Pragyan, Manish, Rakesh, Shreya
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
                window.location.href = 'LogoutServlet';
            }
        });
    });
</script>
