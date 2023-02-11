package Controllers;

import Dao.EmpleadoDAO;
import Models.Empleado;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmpleadoController extends HttpServlet {

    Empleado em = new Empleado();
    EmpleadoDAO edao = new EmpleadoDAO();
    int ide;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menuempleado = request.getParameter("menuempleado");
        String accion = request.getParameter("accion");
        if (menuempleado.equals("Empleado")) {
            switch (accion) {
                case "Listar":
                    List<Empleado> lista = edao.listar();
                    request.setAttribute("empleados", lista);
                    break;
                case "Agregar":
                    String dni = request.getParameter("txtDni");
                    String nom = request.getParameter("txtNombres");
                    String usu = request.getParameter("txtUsuario");
                    String email = request.getParameter("txtEmail");
                    String tel = request.getParameter("txtTelefono");
                    String est = request.getParameter("txtEstado");
                    em.setDni(dni);
                    em.setNombres(nom);
                    em.setUser(usu);
                    em.setEmail(email);
                    em.setTelefono(tel);
                    em.setEstado(est);
                    edao.agregar(em);
                    // request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    ide = Integer.parseInt(request.getParameter("id"));
                    Empleado e = edao.listarId(ide);
                    request.setAttribute("empleado", e);
                    //request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String dni1 = request.getParameter("txtDni");
                    String nom1 = request.getParameter("txtNombres");
                    String usu1 = request.getParameter("txtUsuario");
                    String email1 = request.getParameter("txtEmail");
                    String tel1 = request.getParameter("txtTelefono");
                    String est1 = request.getParameter("txtEstado");
                    em.setDni(dni1);
                    em.setNombres(nom1);
                    em.setUser(usu1);
                    em.setEmail(email1);
                    em.setTelefono(tel1);
                    em.setEstado(est1);
                    em.setId(ide);
                    edao.actualizar(em);
                    //request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    ide = Integer.parseInt(request.getParameter("id"));
                    edao.eliminar(ide);
                    // request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Empleados.jsp").forward(request, response);
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
