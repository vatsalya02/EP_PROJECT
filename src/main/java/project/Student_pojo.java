package project;
import javax.persistence.Column;
                       
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Student_project")
public class Student_pojo {
@Id
private String email;
@Column
private String name;
private String password;
private String con_password;
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getCon_password() {
	return con_password;
}
public void setCon_password(String con_password) {
	this.con_password = con_password;
}

}
