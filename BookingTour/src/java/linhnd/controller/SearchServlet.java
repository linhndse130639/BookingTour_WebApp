/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package linhnd.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
@WebServlet(name = "SearchServlet", urlPatterns = {"/SearchServlet"})
public class SearchServlet extends HttpServlet {

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
        int priceFrom, priceTo;
        try {
            String dateFrom = request.getParameter("txtDateFrom");
            String dateTo = request.getParameter("txtDateTo");
            String place = request.getParameter("txtPlace");
            String price = request.getParameter("txtPrice");
            if (price.equals("0")) {
                priceFrom = 0;
                priceTo = 1000000;
            } else if (price.equals("1")) {
                priceFrom = 1000000;
                priceTo = 2000000;
            } else if (price.equals("2")) {
                priceFrom = 2000000;
                priceTo = 3000000;
            } else if (price.equals("3")) {
                priceFrom = 3000000;
                priceTo = 4000000;
            } else if (price.equals("4")) {
                priceFrom = 4000000;
                priceTo = 5000000;
            } else if (price.equals("5")) {
                priceFrom = 5000000;
                priceTo = 0;
            }
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date dateFromD = dateFormat.parse(dateFrom);
            Date dateToD = dateFormat.parse(dateTo);
            if (!dateFromD.before(dateToD)) {
                Date tmp = dateFromD;
                dateFromD = dateToD;
                dateToD = tmp;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
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
        processRequest(request, response);
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
