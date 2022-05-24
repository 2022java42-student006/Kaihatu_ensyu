package la.bean;

import java.io.Serializable;

public class MemberBean implements Serializable {

	private int mem_id;
	private String name;
	private String phoneNumber;
	private String email;
	private String mem_address;
	private String birthday;
	
	public MemberBean(){
		
	}
	
	public MemberBean(int mem_id ,String name, String phoneNumber, String email, String mem_address, String birthday){
		this.mem_id = mem_id;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.mem_address = mem_address;
		this.birthday = birthday;
	}

}
