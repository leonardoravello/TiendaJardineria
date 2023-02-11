package Models;

public class Cliente {

    private int id;
    private String dni;
    private String nombres;
    private String direccion;
    private String estado;

    public Cliente() {
    }

    public Cliente(int id, String dni, String nombres, String direccion, String estado) {
        this.id = id;
        this.dni = dni;
        this.nombres = nombres;
        this.direccion = direccion;
        this.estado = estado;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

}
