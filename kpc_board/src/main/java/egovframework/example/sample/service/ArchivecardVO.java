package egovframework.example.sample.service;

import java.sql.Date;

public class ArchivecardVO {

	private int card_idx;
	private String title;
	private String contents;
	private String img;
	private String url;
	private Date created_date;
	
	public int getCard_idx() {
		return card_idx;
	}
	public void setCard_idx(int card_idx) {
		this.card_idx = card_idx;
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
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	public Date getCreated_date() {
		return created_date;
	}
	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}
	
	
}
