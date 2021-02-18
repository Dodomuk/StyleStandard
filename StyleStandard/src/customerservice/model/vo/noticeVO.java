package customerservice.model.vo;

import java.util.Date;

public class noticeVO {

	private int notice_num; // 글 번호
	private String user_id; // 작성자 ID
	private String notice_title; // 리뷰 제목
	private String notice_content; // 리뷰 내용
	private int notice_cnt; // 조회수
	private Date notice_regdate; // 리뷰 작성일



	public int getnotice_num() {
		return notice_num;
	}

	public void setnotice_num(int notice_num) {
		this.notice_num = notice_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getnotice_title() {
		return notice_title;
	}

	public void setnotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getnotice_content() {
		return notice_content;
	}

	public void setnotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public int getnotice_cnt() {
		return notice_cnt;
	}

	public void setnotice_cnt(int notice_cnt) {
		this.notice_cnt = notice_cnt;
	}

	public Date getnotice_regdate() {
		return notice_regdate;
	}

	public void setnotice_regdate(Date notice_regdate) {
		this.notice_regdate = notice_regdate;
	}
	
}
