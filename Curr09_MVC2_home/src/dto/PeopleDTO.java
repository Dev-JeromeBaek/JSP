package dto;

import javax.servlet.http.HttpServletRequest;

//	DTO : Data Transfer Object
//	VO(Value Object) / entity / Bean

//	ORM : Object Related Mapping
//		  => DB 테이블의 컬럼명과 DTO의 멤버변수 이름을
//			  동일하게 설계하는 처리 방법

public class PeopleDTO {
	
	private int num;
	private String name;
	private int age;
	
	public PeopleDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public PeopleDTO(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	public PeopleDTO(HttpServletRequest request) {
		this.name = request.getParameter("name");
		this.age = Integer.parseInt(request.getParameter("age"));
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	
}// class END
