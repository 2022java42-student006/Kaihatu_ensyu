package la.bean;

import java.io.Serializable;

public class MemberBean implements Serializable {

	private int mem_id;
	private String name;
	private String phoneNumber;
	private String email;
	private String mem_address;
	private String birthday;
	private int login_id;
	private String pass;

	public MemberBean() {
 
	}

	public MemberBean(int mem_id, String name, String phoneNumber, String email, String mem_address, String birthday, int login_id, String pass) {
		this.mem_id = mem_id;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.mem_address = mem_address;
		this.birthday = birthday;
		this.login_id = login_id;
		this.pass = pass;
	}

	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}

	public int getMem_id() {
		return mem_id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}

	public String getMem_address() {
		return mem_address;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getBirthday() {
		return birthday;
	}
	
	public void setLogin_id(int login_id) {
		this.login_id = login_id;
	}

	public int getLogin_id() {
		return login_id;
	}
	
	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getPass() {
		return pass;
	}

}
