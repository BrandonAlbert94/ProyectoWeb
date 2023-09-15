package hotel.entidad;

public class Tarjeta {
    private int numeroTarjeta;
    private String fechaCaducidad;
    private String nombreCliente;
    private String paternoCliente;
    private String maternoCliente;

    public int getNumeroTarjeta() {
        return numeroTarjeta;
    }

    public void setNumeroTarjeta(int numeroTarjeta) {
        this.numeroTarjeta = numeroTarjeta;
    }

    public String getFechaCaducidad() {
        return fechaCaducidad;
    }

    public void setFechaCaducidad(String fechaCaducidad) {
        this.fechaCaducidad = fechaCaducidad;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getPaternoCliente() {
        return paternoCliente;
    }

    public void setPaternoCliente(String paternoCliente) {
        this.paternoCliente = paternoCliente;
    }

    public String getMaternoCliente() {
        return maternoCliente;
    }

    public void setMaternoCliente(String maternoCliente) {
        this.maternoCliente = maternoCliente;
    }
}


