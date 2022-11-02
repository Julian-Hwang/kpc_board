package egovframework.example.sample.service;

public class AdminmaterialVO {

	private int materialidx;
	private String title;
	private String contents;
	private String img;
	private String file;
	private String useyn;
	private String createddate;
	
	public int getMaterialidx() {
		return materialidx;
	}
	public void setMaterialidx(int materialidx) {
		this.materialidx = materialidx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
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
		return "AdminmaterialVO [materialidx=" + materialidx + ", title=" + title + ", contents=" + contents + ", img="
				+ img + ", file=" + file + ", useyn=" + useyn + ", createddate=" + createddate + "]";
	}
	
	
	
	
}
