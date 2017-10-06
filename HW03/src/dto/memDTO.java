package dto;

import java.sql.Date;

public class memDTO {
	
	private int num;
	
	private String id;
	private String pw;
	private String name;
	private int age;
	private String birth;
	private String email;
	private Date nalja;
	
	public memDTO() {
		
	}// con END
	
	public memDTO(String id, String pw, String name, int age, String birth, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.birth = birth;
		this.email = email;
	}

	public memDTO(int num, String id, String pw, String name, int age, String birth, String email) {
		super();
		this.num = num;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.birth = birth;
		this.email = email;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getNalja() {
		return nalja;
	}
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
	
}// DTO END
