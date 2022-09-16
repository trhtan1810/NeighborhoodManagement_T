package com.tan.models;

public class UserItem {

	private String tenTaiKhoan;
	private String matKhau;
	private String vaiTro;
	
	public UserItem() {
		super();
	}
	
	public UserItem(String tenTaiKhoan, String matKhau, String vaiTro) {
		super();
		this.tenTaiKhoan = tenTaiKhoan;
		this.matKhau = matKhau;
		this.vaiTro = vaiTro;
	}

	
	public String getTenTaiKhoan() {
		return tenTaiKhoan;
	}


	public void setTenTaiKhoan(String tenTaiKhoan) {
		this.tenTaiKhoan = tenTaiKhoan;
	}


	public String getMatKhau() {
		return matKhau;
	}


	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}


	public String getVaiTro() {
		return vaiTro;
	}


	public void setVaiTro(String vaiTro) {
		this.vaiTro = vaiTro;
	}
		
}
