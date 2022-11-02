package egovframework.example.sample.service;

public class AdmineduVO {

	private int eduidx;
	private String edutype;
	private String title;
	private String image;
	private String url;
	private String statedate1;
	private String statedate2;
	private String useyn;
	private String createddate;
	public int getEduidx() {
		return eduidx;
	}
	public void setEduidx(int eduidx) {
		this.eduidx = eduidx;
	}
	public String getEdutype() {
		return edutype;
	}
	public void setEdutype(String edutype) {
		this.edutype = edutype;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getStatedate1() {
		return statedate1;
	}
	public void setStatedate1(String statedate1) {
		this.statedate1 = statedate1;
	}
	public String getStatedate2() {
		return statedate2;
	}
	public void setStatedate2(String statedate2) {
		this.statedate2 = statedate2;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public String getCreateddate() {
		return createddate;
	}
	public void setCreateddate(String createddate) {
		this.createddate = createddate;
	}
	
	@Override
	public String toString() {
		return "AdmineduVO [eduidx=" + eduidx + ", edutype=" + edutype + ", title=" + title + ", image=" + image
				+ ", url=" + url + ", statedate1=" + statedate1 + ", statedate2=" + statedate2 + ", useyn=" + useyn
				+ ", createddate=" + createddate + "]";
	}
	
	
}
