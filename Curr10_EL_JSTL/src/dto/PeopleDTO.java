package dto;

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
	
}// DTO END