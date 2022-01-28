package fr.formation.inti.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table( name = "t_user")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_user")
	private Integer idUser;
	private String login; 
	private String passWord; 
	@Column(name = "connection_Number")
	private Integer connectionNumber;
	@OneToOne
	@JoinColumn(name="emp_id", nullable = true)
	private Employee emp;
	
	@ManyToMany
	@JoinTable(name= "t_user_role",
	              joinColumns =@JoinColumn(name ="id_user"),
	              inverseJoinColumns = @JoinColumn(name ="id_role"))
	private List<Role> roles = new ArrayList<Role>();
	


	public User() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @param idUser
	 * @param login
	 * @param passWord
	 * @param connectionNumber
	 */
	public User( String login, String passWord, Integer connectionNumber) {
		super();
		
		this.login = login;
		this.passWord = passWord;
		this.connectionNumber = connectionNumber;
	}
	
	public User(int int1, String string, String string2, int int2) {
		// TODO Auto-generated constructor stub
	}
	public Integer getIdUser() {
		return idUser;
	}
	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public Integer getConnectionNumber() {
		return connectionNumber;
	}
	public void setConnectionNumber(Integer connectionNumber) {
		this.connectionNumber = connectionNumber;
	}
	
	public Employee getEmp() {
		return emp;
	}
	public void setEmp(Employee emp) {
		this.emp = emp;
	}
	
	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}
	
	@Override
	public String toString() {
		return "User [idUser=" + idUser + ", login=" + login + ", passWord=" + passWord + ", connectionNumber="
				+ connectionNumber + "]";
	} 
	

	
}
