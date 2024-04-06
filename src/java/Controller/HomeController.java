/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ProductDAO;
import Entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author MinhHieu
 */
@WebServlet(name = "HomeController", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

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
        ProductDAO dao = new ProductDAO();
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String service = request.getParameter("service");
            if (service == null) {
                service = "display";

            }
            if (service.equals("display")) {
                List<Product> list = dao.getAllProduct("select * from Medicines ORDER BY MedicineID  DESC");
                request.setAttribute("listP", list);
                request.getRequestDispatcher("jsp/manager.jsp").forward(request, response);
            }
            if (service.equals("insert")) {
                String submit = request.getParameter("submit");
                if (submit == null) {
                    request.getRequestDispatcher("jsp/insertProduct.jsp").forward(request, response);
                } else {
                    String name = request.getParameter("name");
                    String des = request.getParameter("des");
                    double price = Double.parseDouble(request.getParameter("price"));
                    int quantity = Integer.parseInt(request.getParameter("quantity"));
                    String unit = request.getParameter("unit");

                    Product pro = new Product(name, des, price, quantity, unit);
                    dao.insertProduct(pro);
                    response.sendRedirect("home");
                }
            }
            if (service.equals("update")) {
                String submit = request.getParameter("submit");
                if(submit == null){
                    int id = Integer.parseInt(request.getParameter("id"));
                    Product pro = (Product)dao.getAllProduct("select * from Medicines "
                            + "where MedicineID = "+id).get(0);
                    
                    request.setAttribute("data", pro);
                    request.getRequestDispatcher("jsp/updateProduct.jsp").forward(request, response);
                    
                }else{
                    int id = Integer.parseInt(request.getParameter("id"));
                    String name = request.getParameter("name");
                    String des = request.getParameter("des");
                    double price = Double.parseDouble(request.getParameter("price"));
                    int quantity = Integer.parseInt(request.getParameter("quantity"));
                    String unit = request.getParameter("unit");

                    Product pro = new Product(id,name, des, price, quantity, unit);
                    dao.updateProduct(pro);
                    response.sendRedirect("home");
                }
            }
            if (service.equals("delete")) {
                    int id = Integer.parseInt(request.getParameter("id"));
                    dao.deleteProduct(id);
                    response.sendRedirect("home");
            }

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
