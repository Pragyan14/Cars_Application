/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.vit;

import com.vit.dao.CarDAO;
import com.vit.pojo.Car;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author SREEJIT BAKSHI
 */
@MultipartConfig
public class AddCarServlet extends HttpServlet {
    HttpSession session = null;
    CarDAO carDAO=null;
    
    @Override
    public void init() {
        // Initialize the UserDAO singleton instance
        this.carDAO = CarDAO.getInstance();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddCarServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddCarServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            session = request.getSession(false);
            
            Part carImagePart = request.getPart("carImage");
            byte[] imageBytes = null;

            if (carImagePart != null) {
                try (InputStream inputStream = carImagePart.getInputStream()) {
                    imageBytes = new byte[(int) carImagePart.getSize()];
                    inputStream.read(imageBytes);
                }
            }

            // Retrieve form data and create a new User object
            Car car = new Car(request.getParameter("carModel"), request.getParameter("regNumber"), request.getParameter("carColor"), request.getParameter("fuelType"), Integer.parseInt(request.getParameter("kmDriven")), request.getParameter("gearType"), Double.parseDouble(request.getParameter("price")), (String) session.getAttribute("email"), imageBytes);

             // Use carDAO to insert the car
            boolean hasInserted = carDAO.executeInsert(car);
            
            if (hasInserted) {
                response.sendRedirect("profile.jsp");
            } else {
                request.setAttribute("error", "NEW CAR ADDITION FAILED");
                request.getRequestDispatcher("profile.jsp").forward(request, response);
            }
        }
        catch(IOException | ServletException e){
            e.printStackTrace();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
