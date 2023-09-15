package hotel.entidad;

import java.util.Date;

public class boleta {
	
	private int id_bol;
	private Date fecha_emis_bol;
	private int id_clien;
	private String nomb_clie;
	private int id_cuar;
	private String nomb_cuar;
	private Double cos_cuar;
	private int num_tar;
	
	
	public int getId_bol() {
		return id_bol;
	}
	public void setId_bol(int id_bol) {
		this.id_bol = id_bol;
	}
	public Date getFecha_emis_bol() {
		return fecha_emis_bol;
	}
	public void setFecha_emis_bol(Date fecha_emis_bol) {
		this.fecha_emis_bol = fecha_emis_bol;
	}
	public int getId_clien() {
		return id_clien;
	}
	public void setId_clien(int id_clien) {
		this.id_clien = id_clien;
	}
	public String getNomb_clie() {
		return nomb_clie;
	}
	public void setNomb_clie(String nomb_clie) {
		this.nomb_clie = nomb_clie;
	}
	public int getId_cuar() {
		return id_cuar;
	}
	public void setId_cuar(int id_cuar) {
		this.id_cuar = id_cuar;
	}
	public String getNomb_cuar() {
		return nomb_cuar;
	}
	public void setNomb_cuar(String nomb_cuar) {
		this.nomb_cuar = nomb_cuar;
	}
	public Double getCos_cuar() {
		return cos_cuar;
	}
	public void setCos_cuar(Double cos_cuar) {
		this.cos_cuar = cos_cuar;
	}
	public int getNum_tar() {
		return num_tar;
	}
	public void setNum_tar(int num_tar) {
		this.num_tar = num_tar;
	}

	
	
}