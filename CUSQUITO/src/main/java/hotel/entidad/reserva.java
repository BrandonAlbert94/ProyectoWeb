package hotel.entidad;

import java.util.Date;

public class reserva {

	private int id_reser;
	private Date fecha_reser;
	private Date fecha_salid_reser;
	private int id_cli;
	private int id_cua;
	private Double cos_cuar;
	
	
	public int getId_reser() {
		return id_reser;
	}
	public void setId_reser(int id_reser) {
		this.id_reser = id_reser;
	}
	public Date getFecha_reser() {
		return fecha_reser;
	}
	public void setFecha_reser(Date fecha_reser) {
		this.fecha_reser = fecha_reser;
	}
	public Date getFecha_salid_reser() {
		return fecha_salid_reser;
	}
	public void setFecha_salid_reser(Date fecha_salid_reser) {
		this.fecha_salid_reser = fecha_salid_reser;
	}
	public int getId_cli() {
		return id_cli;
	}
	public void setId_cli(int id_cli) {
		this.id_cli = id_cli;
	}
	public int getId_cua() {
		return id_cua;
	}
	public void setId_cua(int id_cua) {
		this.id_cua = id_cua;
	}
	public Double getCos_cuar() {
		return cos_cuar;
	}
	public void setCos_cuar(Double cos_cuar) {
		this.cos_cuar = cos_cuar;
	}
	
	
	
}
