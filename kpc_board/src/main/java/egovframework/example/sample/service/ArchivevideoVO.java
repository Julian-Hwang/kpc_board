package egovframework.example.sample.service;

import java.sql.Date;

public class ArchivevideoVO {

	private int video_idx;
	private String title;
	private String contents;
	private String img;
	private String url;
	private String created_date;
	
	public int getVideo_idx() {
		return video_idx;
	}
	public void setVideo_idx(int video_idx) {
		this.video_idx = video_idx;
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
	public String getCreated_date() {
		return created_date;
	}
	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}
	
}
