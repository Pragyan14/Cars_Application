<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session == null || session.getAttribute("name") == null && session.getAttribute("email") == null) 
    {
        response.sendRedirect("login.jsp");
        return;
    }
%>