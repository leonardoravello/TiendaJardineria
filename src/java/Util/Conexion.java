package Util;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
//jdbc:mysql://localhost:3006/bd_tienda

    Connection con;
    String url = "jdbc:mysql://localhost/bd_tienda";
    String user = "root";
    String pass = "";

    public Connection Conexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
        }
        return con;
    }
}
