package Controllers;

import Dao.ProductoDAO;
import Models.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProductoController extends HttpServlet {

    Producto pro = new Producto();
    ProductoDAO pdao = new ProductoDAO();
    int idp;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menuproducto = request.getParameter("menuproducto");
        String accion = request.getParameter("accion");
        if (menuproducto.equals("Producto")) {
            switch (accion) {
                case "Listar":
                    List<Producto> lista = pdao.listar();
                    request.setAttribute("productos", lista);
                    break;
                case "Agregar":
                    String nom = request.getParameter("txtNombres");
                    Double pre = Double.parseDouble(request.getParameter("txtPrecio"));
                    int stock = Integer.parseInt(request.getParameter("txtStock"));
                    String est = request.getParameter("txtEstado");
                    pro.setNombres(nom);
                    pro.setPrecio(pre);
                    pro.setStock(stock);
                    pro.setEstado(est);
                    pdao.agregar(pro);
                    // request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idp = Integer.parseInt(request.getParameter("id"));
                    Producto p = pdao.listarId(idp);
                    request.setAttribute("producto", p);
                    //request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String nom1 = request.getParameter("txtNombres");
                    Double pre1 = Double.parseDouble(request.getParameter("txtPrecio"));
                    int stock1 = Integer.parseInt(request.getParameter("txtStock"));
                    String est1 = request.getParameter("txtEstado");
                    pro.setNombres(nom1);
                    pro.setPrecio(pre1);
                    pro.setStock(stock1);
                    pro.setEstado(est1);
                    pro.setId(idp);
                    pdao.actualizar(pro);
                    //request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idp = Integer.parseInt(request.getParameter("id"));
                    pdao.eliminar(idp);
                    // request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Productos.jsp").forward(request, response);
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
