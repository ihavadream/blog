package entity;

import java.io.Serializable;

public class Master implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	private String master_name;
	private String master_password;
	private String master_sex;
	
	public Master(String master_name,String master_password,String master_sex){
		this.master_name=master_name;
		this.master_password=master_password;
		this.master_sex=master_sex;
	}
	public Master(int id,String master_name,String master_password,String master_sex){
		this.id=id;
		this.master_name=master_name;
		this.master_password=master_password;
		this.master_sex=master_sex;
	}
	public Master(){
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMaster_name() {
		return master_name;
	}
	public void setMaster_name(String master_password) {
		this.master_password = master_password;
	}
	public String getMaster_sex() {
		return master_sex;
	}
	public void setMaster_sex(String master_sex) {
		this.master_sex = master_sex;
	}
	@Override
	public String toString() {
		return "masterBean [id=" + id + ", master_name=" + master_name
				+ ", master_password=" + master_password + ", master_sex="
				+ master_sex + "]";
	}
	
}

