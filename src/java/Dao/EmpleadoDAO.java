package Dao;

import Models.Empleado;
import Util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public Empleado validar(String user, String dni) {
        Empleado em = new Empleado();
        String sql = "select * from empleado where User=? and Dni=?;";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, dni);
            rs = ps.executeQuery();
            while (rs.next()) {
                em.setId(rs.getInt("IdEmpleado"));
                em.setUser(rs.getString("User"));
                em.setDni(rs.getString("Dni"));
                em.setNombres(rs.getString("Nombres"));
            }
        } catch (Exception e) {
        }
        return em;
    }

    public List listar() {
        String sql = "select * from empleado";
        List<Empleado> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Empleado em = new Empleado();
                em.setId(rs.getInt(1));
                em.setDni(rs.getString(2));
                em.setNombres(rs.getString(3));
                em.setUser(rs.getString(4));
                em.setEmail(rs.getString(5));
                em.setTelefono(rs.getString(6));
                em.setEstado(rs.getString(7));
                lista.add(em);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    public int agregar(Empleado em) {
        String sql = "insert into empleado(Dni, Nombres, User, Email, Telefono, Estado)values(?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, em.getDni());
            ps.setString(2, em.getNombres());
            ps.setString(3, em.getUser());
            ps.setString(4, em.getEmail());
            ps.setString(5, em.getTelefono());
            ps.setString(6, em.getEstado());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }

    public Empleado listarId(int id) {
        Empleado em = new Empleado();
        String sql = "select * from empleado where IdEmpleado=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                em.setDni(rs.getString(2));
                em.setNombres(rs.getString(3));
                em.setUser(rs.getString(4));
                em.setEmail(rs.getString(5));
                em.setTelefono(rs.getString(6));
                em.setEstado(rs.getString(7));
            }
        } catch (Exception e) {
        }
        return em;
    }

    public int actualizar(Empleado em) {
        String sql = "update empleado set Dni=?,Nombres=?,User=?,Email=?,Telefono=?,Estado=? where IdEmpleado=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, em.getDni());
            ps.setString(2, em.getNombres());
            ps.setString(3, em.getUser());
            ps.setString(4, em.getEmail());
            ps.setString(5, em.getTelefono());
            ps.setString(6, em.getEstado());
            ps.setInt(7, em.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }

    public void eliminar(int id) {
        String sql = "delete from empleado where IdEmpleado=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
