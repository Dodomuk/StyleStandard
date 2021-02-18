package customerservice.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import common.jdbc.DBConnector;
import customerservice.model.vo.noticeVO;

public class notice_DAO {

	// 빈객체를 매개변수로 받는다.
	// 리뷰작성
	public static void notice_write(noticeVO bean) {

		try {

			// DB연결
			Connection conn = common.jdbc.DBConnector.getConnection();

			SimpleDateFormat format1 = new SimpleDateFormat ( "ddHHmmss");
			Calendar time = Calendar.getInstance();
			String format_time1 = format1.format(time.getTime());
			
			// SQL 문
			String sql = "INSERT INTO NOTICE_TABLE(notice_num, user_id, notice_title, notice_content, notice_cnt, notice_regdate)"
					+ " VALUES(?, ?, ?, ?, 0, sysdate)";

			PreparedStatement psmt = conn.prepareStatement(sql);

			psmt.setString(1, format_time1);
			psmt.setString(2, bean.getUser_id());
			psmt.setString(3, bean.getnotice_title());
			psmt.setString(4, bean.getnotice_content());

			// SQL 실행
			psmt.execute();

			// DB 연결 종료
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	} // review_write()

	// 모든 리뷰글들을 불러온다.
	public static ArrayList<noticeVO> notice_get(int start, int end) {

		// Arraylist 생성
		// 빈객체를 담을 arraylist
		ArrayList<noticeVO> list = new ArrayList<noticeVO>();

		try {

		
			// DB연결
			Connection conn = DBConnector.getConnection();

			// SQL
			// 리뷰게시판에 모든 데이터를 불러온다.
			String sql =  "select * from "
						 + "(select rownum as rnum, a1.* from "
					     + "(select notice_num, user_id, notice_title, notice_content, notice_cnt, notice_regdate FROM NOTICE_TABLE ORDER BY notice_num DESC) a1) a2 "
						 + "where a2.rnum >= ? and a2.rnum <=?";

			//Statement stmt = conn.createStatement();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);

			// SQL 실행
			ResultSet rs = pstmt.executeQuery();

			// rs.next() 값이 있으면 투루를 반환.
			while (rs.next()) {

				int notice_num = rs.getInt("NOTICE_NUM"); // 글 번호
				String user_id = rs.getString("USER_ID"); // 작성자 ID
				String notice_title = rs.getString("NOTICE_TITLE"); // 리뷰 제목
				String notice_content = rs.getString("NOTICE_CONTENT"); // 리뷰 내용
				int notice_cnt = rs.getInt("NOTICE_CNT"); // 조회수													
				Date notice_regdate = rs.getDate("NOTICE_REGDATE"); // 리뷰 작성일


				// 빈객체 생성
				noticeVO bean = new noticeVO();

				bean.setnotice_num(notice_num);
				bean.setUser_id(user_id);
				bean.setnotice_title(notice_title);
				bean.setnotice_content(notice_content);
				bean.setnotice_cnt(notice_cnt);
				bean.setnotice_regdate(notice_regdate);
	
				list.add(bean);
			}

			// DB 연결 종료
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}

	// 페이지 수를 구하는 메서드
	// 총 레코드수(게시글 수)를 구함.
	public static int notice_getPageCount() throws Exception {

		Connection conn = DBConnector.getConnection();

		// 쿼리문
		String sql = "SELECT COUNT(*) FROM " + "NOTICE_TABLE";

		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();

		// 전체 글의 개수를 가져온다.
		int cnt = rs.getInt(1);

		
		conn.close();

		// 총 페이지 개수 리턴
		return cnt;

	}

	// 리뷰글을 읽어오는 메서드
	public static noticeVO notice_read(int num) throws Exception {

		// 빈객체 생성
		noticeVO bean = new noticeVO();

		// DB 연결
		Connection conn = DBConnector.getConnection();

		// SQL
		String sql = "SELECT * FROM NOTICE_TABLE WHERE NOTICE_NUM=" + num;

		Statement stmt = conn.createStatement();

		ResultSet rs = stmt.executeQuery(sql);

		while (rs.next()) {

			int notice_num = rs.getInt("NOTICE_NUM"); // 글 번호
			String user_id = rs.getString("USER_ID"); // 작성자 ID

			String notice_title = rs.getString("NOTICE_TITLE"); // 리뷰 제목
			String notice_content = rs.getString("NOTICE_CONTENT"); // 리뷰 내용
			int notice_cnt = rs.getInt("NOTICE_CNT"); // 조회수												
			Date notice_regdate = rs.getDate("NOTICE_REGDATE"); // 리뷰 작성일


			bean.setnotice_num(notice_num);
			bean.setUser_id(user_id);

			bean.setnotice_title(notice_title);
			bean.setnotice_content(notice_content);
			bean.setnotice_cnt(notice_cnt);

			bean.setnotice_regdate(notice_regdate);

		}

		conn.close();

		return bean;

	}
	
	
	public static void notice_delete(int num) throws Exception{
		
		Connection conn = DBConnector.getConnection();
		// SQL
		String sql = "DELETE FROM NOTICE_TABLE WHERE NOTICE_NUM=" + num;

		Statement stmt = conn.createStatement();
		stmt.executeQuery(sql);
		
		conn.close();
	
		
	}
	


}
