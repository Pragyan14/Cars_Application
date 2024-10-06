package com.vit;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author pragy
 */
@WebServlet(name = "RequestServiceServlet", urlPatterns = {"/RequestServiceServlet"})
public class RequestServiceServlet extends HttpServlet {
    public static Connection con;
    public static PreparedStatement pstmt;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String jdbcUrl = "jdbc:postgresql://pg-3e2bc955-rakeshmeher.i.aivencloud.com:17051/CarAppDB?ssl=require&user=avnadmin&password=AVNS_vD-_piUR0bgJFpyhNQo";
        String carModel = request.getParameter("carModel");
        String problem = request.getParameter("problem");
        String userEmail = request.getParameter("userEmail");
        String query = "INSERT INTO service (model, problem, emailid) VALUES (?, ?,?);";
        try{
            con = DriverManager.getConnection(jdbcUrl);
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, carModel);
            pstmt.setString(2, problem);
            pstmt.setString(3, "try@123gmail.com");
            int rowsInserted = pstmt.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("Service request submitted successfully!");
            } else {
                System.out.println("Failed to submit the service request.");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
