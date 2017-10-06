package dto;

public class FileDTO {

	private String upPath = "C:\\Users\\Yeob's\\Desktop\\eclipse\\JSP_Works\\Curr05_FilePage\\WebContent\\files";
	
	private int num;
	private String writer;
	private String title;
	private String orgName;
	private String sysName;
	
	
	public FileDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public FileDTO(String writer, String title, String orgName, String sysName) {
		super();
		this.writer = writer;
		this.title = title;
		this.orgName = orgName;
		this.sysName = sysName;
	}
	
	
	public String getUpPath() {
		return upPath;
	}
	public void setUpPath(String upPath) {
		this.upPath = upPath;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	
	
	
}// DTO END
