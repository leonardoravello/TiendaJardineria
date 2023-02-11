package Dao;

import Models.Producto;
import Util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public Producto buscar(int id) {
        Producto p = new Producto();
        String sql = "select * from producto where IdProducto=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setPrecio(rs.getDouble(3));
                p.setStock(rs.getInt(4));
                p.setEstado(rs.getString(5));
            }
        } catch (Exception e) {
        }
        return p;
    }

    public int actualizarstock(int id, int stock) {
        String sql = "update producto set Stock=? where IdProducto=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, stock);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;

    }

    public List listar() {
        String sql = "select * from producto";
        List<Producto> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto pro = new Producto();
                pro.setId(rs.getInt(1));
                pro.setNombres(rs.getString(2));
                pro.setPrecio(rs.getDouble(3));
                pro.setStock(rs.getInt(4));
                pro.setEstado(rs.getString(5));
                lista.add(pro);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    public int agregar(Producto pro) {
        String sql = "insert into producto(Nombres, Precio, Stock, Estado)values(?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pro.getNombres());
            ps.setDouble(2, pro.getPrecio());
            ps.setInt(3, pro.getStock());
            ps.setString(4, pro.getEstado());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }

    public Producto listarId(int id) {
        Producto pr = new Producto();
        String sql = "select * from producto where IdProducto=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                pr.setId(rs.getInt(1));
                pr.setNombres(rs.getString(2));
                pr.setPrecio(rs.getDouble(3));
                pr.setStock(rs.getInt(4));
                pr.setEstado(rs.getString(5));
            }
        } catch (Exception e) {
        }
        return pr;
    }

    public int actualizar(Producto pro) {
        String sql = "update producto set Nombres=?,Precio=?,Stock=?,Estado=? where IdProducto=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pro.getNombres());
            ps.setDouble(2, pro.getPrecio());
            ps.setInt(3, pro.getStock());
            ps.setString(4, pro.getEstado());
            ps.setInt(5, pro.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }

    public void eliminar(int id) {
        String sql = "delete from producto where IdProducto=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
