<div class="navbar">
    <div class="logo">
        <i class="fa-solid fa-ghost"></i>
    </div>
    <ul class="nav-links">
        <li><a href="viewCar.jsp"><i class="fa-solid fa-car"></i> Cars</a></li>
        <li><a href="service.jsp"><i class="fa-solid fa-cogs"></i> Services</a></li>
        <li><a href="profile.jsp"><i class="fa-solid fa-user"></i> Profile</a></li>
        <% if (session != null && session.getAttribute("email") != null) { %>
            <li><a href="LogoutServlet"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
        <% } %>
    </ul>
</div>
