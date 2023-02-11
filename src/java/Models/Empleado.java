package Models;

public class Empleado {

    private int id;
    private String nombres;
    private String user;
    private String dni;
    private String email;
    private String telefono;
    private String estado;

    public Empleado() {
    }

    public Empleado(int id, String nombres, String user, String dni, String email, String telefono, String estado) {
        this.id = id;
        this.nombres = nombres;
        this.user = user;
        this.dni = dni;
        this.email = email;
        this.telefono = telefono;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

}
