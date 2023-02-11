package Controllers;

import Dao.ClienteDAO;
import Models.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ClienteController extends HttpServlet {

    Cliente cli = new Cliente();
    ClienteDAO cdao = new ClienteDAO();
    int idc;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menucliente = request.getParameter("menucliente");
        String accion = request.getParameter("accion");
        if (menucliente.equals("Cliente")) {
            switch (accion) {
                case "Listar":
                    List<Cliente> lista = cdao.listar();
                    request.setAttribute("clientes", lista);
                    break;
                case "Agregar":
                    String dni = request.getParameter("txtDni");
                    String nom = request.getParameter("txtNombres");
                    String dir = request.getParameter("txtDireccion");
                    String est = request.getParameter("txtEstado");
                    cli.setDni(dni);
                    cli.setNombres(nom);
                    cli.setDireccion(dir);
                    cli.setEstado(est);
                    cdao.agregar(cli);
                    // request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    Cliente c = cdao.listarId(idc);
                    request.setAttribute("cliente", c);
                    //request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String dni1 = request.getParameter("txtDni");
                    String nom1 = request.getParameter("txtNombres");
                    String dir1 = request.getParameter("txtDireccion");
                    String est1 = request.getParameter("txtEstado");
                    cli.setDni(dni1);
                    cli.setNombres(nom1);
                    cli.setDireccion(dir1);
                    cli.setEstado(est1);
                    cli.setId(idc);
                    cdao.actualizar(cli);
                    //request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    cdao.eliminar(idc);
                    // request.getRequestDispatcher("EmpleadoController?menuempleado=Empleado&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
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
