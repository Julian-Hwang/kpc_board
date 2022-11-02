package egovframework.example.sample.service;

public class ProgramqnawriteVO {

	private int qnawriteidx;
	private String name;
	private String position;
	private String company;
	private String department;
	private String phone1;
	private String phone2;
	private String phone3;
	private String email;
	private String request;
	private String content;
	private String createdDate;
	
	
	
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public int getQnawriteidx() {
		return qnawriteidx;
	}
	public void setQnawriteidx(int qnawriteidx) {
		this.qnawriteidx = qnawriteidx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "ProgramqnawriteVO [qnawriteidx=" + qnawriteidx + ", name=" + name + ", position=" + position
				+ ", company=" + company + ", department=" + department + ", phone1=" + phone1 + ", phone2=" + phone2
				+ ", phone3=" + phone3 + ", email=" + email + ", request=" + request + ", content=" + content
				+ ", createdDate=" + createdDate + "]";
	}
	
	
}
