package pg;
import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PG_Details")
public class PG_Pojo {
	@Id
	private int regno;
	@Column
	private String name;
	private int year;
	private String email,department,address,gender;
	private String tboard,tper,tyear;
	private String iboard,iper,iyear;
	private long phone_no;
	private int bper,byear;
	public int getRegno() {
		return regno;
	}
	public void setRegno(int regno) {
		this.regno = regno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTboard() {
		return tboard;
	}
	public void setTboard(String tboard) {
		this.tboard = tboard;
	}
	public String getTper() {
		return tper;
	}
	public void setTper(String tper) {
		this.tper = tper;
	}
	public String getTyear() {
		return tyear;
	}
	public void setTyear(String tyear) {
		this.tyear = tyear;
	}
	public String getIboard() {
		return iboard;
	}
	public void setIboard(String iboard) {
		this.iboard = iboard;
	}
	public String getIper() {
		return iper;
	}
	public void setIper(String iper) {
		this.iper = iper;
	}
	public String getIyear() {
		return iyear;
	}
	public void setIyear(String iyear) {
		this.iyear = iyear;
	}
	public long getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(long phone_no) {
		this.phone_no = phone_no;
	}
	public int getBper() {
		return bper;
	}
	public void setBper(int bper) {
		this.bper = bper;
	}
	public int getByear() {
		return byear;
	}
	public void setByear(int byear) {
		this.byear = byear;
	}
	
}
