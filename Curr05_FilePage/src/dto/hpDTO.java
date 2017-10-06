package dto;

public class hpDTO {
	
	private String upPath = 
	"C:/Users/Yeob's/Desktop/eclipse/JSP_Works/HW0210/WebContent/imges";
	
	private int num;
	private String name;
	private int price;
	private String contOrigin;
	private String orgName;
	private String sysName;
	private String opt;
	private String memo;
	
	public hpDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public hpDTO(String name, int price, String contOrigin,
				String orgName, String sysName, String opt, String memo) {
		super();
		this.name = name;
		this.price = price;
		this.contOrigin = contOrigin;
		this.orgName = orgName;
		this.sysName = sysName;
		this.opt = opt;
		this.memo = memo;
	}
	
	public String getUpPath() {
		return upPath;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getSysName() {
		return sysName;
	}
	public void setSysName(String sysName) {
		this.sysName = sysName;
	}
	public String getContOrigin() {
		return contOrigin;
	}
	public void setContOrigin(String contOrigin) {
		this.contOrigin = contOrigin;
	}
	public String getOpt() {
		return opt;
	}
	public void setOpt(String opt) {
		this.opt = opt;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	
	
}// DTO END
