package dto;

import java.sql.Connection;

import module.jdbcConnector;

public class HamDTO {
	
	private int num;
	private String nameHam;
	private String brandHam;
	private int priceHam;
	private double kcalHam;
	
	public HamDTO() {
		// TODO Auto-generated constructor stub
	}// con END

	public HamDTO(String nameHam, String brandHam, int priceHam, double kcalHam) {
		super();
		this.nameHam = nameHam;
		this.brandHam = brandHam;
		this.priceHam = priceHam;
		this.kcalHam = kcalHam;
	}

	public int getNum() { return num; }
	public void setNum(int num) { this.num = num;}
	public String getNameHam() { return nameHam; }
	public void setNameHam(String nameHam) { this.nameHam = nameHam; }
	public String getBrandHam() { return brandHam; }
	public void setBrandHam(String brandHam) { this.brandHam = brandHam; }
	public int getPriceHam() { return priceHam; }
	public void setPriceHam(int priceHam) { this.priceHam = priceHam; }
	public double getKcalHam() { return kcalHam; }
	public void setKcalHam(double kcalHam) { this.kcalHam = kcalHam; }
	
}// class END
