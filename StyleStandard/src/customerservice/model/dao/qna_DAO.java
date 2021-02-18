package customerservice.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import common.jdbc.DBConnector;
import customerservice.model.vo.qnaVO;

public class qna_DAO {

	// 빈객체를 매개변수로 받는다.
	// 리뷰작성
	public static void qna_write(qnaVO bean) {

		try {

			// DB연결
			Connection conn = DBConnector.getConnection();

			// SQL 문
			String sql = "INSERT INTO QNA_TABLE(qna_num, user_id, qna_title, qna_content, qna_regdate)"
					+ " VALUES(SEQ_EBOOK.nextval, ?, ?, ?, sysdate)";

			PreparedStatement psmt = conn.prepareStatement(sql);

			psmt.setString(1, bean.getUser_id());
			psmt.setString(2, bean.getQna_title());
			psmt.setString(3, bean.getQna_content());

			// SQL 실행
			psmt.execute();

			// DB 연결 종료
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	} // review_write()

	// 모든 리뷰글들을 불러온다.
	public static ArrayList<qnaVO> qna_get(int start, int end) {

		// Arraylist 생성
		// 빈객체를 담을 arraylist
		ArrayList<qnaVO> list = new ArrayList<qnaVO>();

		try {

		
			// DB연결
			Connection conn = DBConnector.getConnection();

			// SQL
			// 리뷰게시판에 모든 데이터를 불러온다.
			String sql =  "select * from "
						 + "(select rownum as rnum, a1.* from "
					     + "(select qna_num, user_id, qna_title, qna_content, qna_regdate FROM QNA_TABLE ORDER BY qna_num DESC) a1) a2 "
						 + "where a2.rnum >= ? and a2.rnum <=?";

			//Statement stmt = conn.createStatement();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);

			// SQL 실행
			ResultSet rs = pstmt.executeQuery();

			// rs.next() 값이 있으면 투루를 반환.
			while (rs.next()) {

				int qna_num = rs.getInt("QNA_NUM"); // 글 번호
				String user_id = rs.getString("USER_ID"); // 작성자 ID
				String qna_title = rs.getString("QNA_TITLE"); // 리뷰 제목
				String qna_content = rs.getString("QNA_CONTENT"); // 리뷰 내용
				Date qna_regdate = rs.getDate("QNA_REGDATE"); // 리뷰 작성일

				// 빈객체 생성
				qnaVO bean = new qnaVO();

				bean.setQna_num(qna_num);
				bean.setUser_id(user_id);
				bean.setQna_title(qna_title);
				bean.setQna_content(qna_content);
				bean.setQna_regdate(qna_regdate);

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
	public static int qna_getPageCount() throws Exception {

		Connection conn = DBConnector.getConnection();

		// 쿼리문
		String sql = "SELECT COUNT(*) FROM " + "QNA_TABLE";

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
	public static qnaVO qna_read(int num) throws Exception {

		// 빈객체 생성
		qnaVO bean = new qnaVO();

		// DB 연결
		Connection conn = DBConnector.getConnection();

		// SQL
		String sql = "SELECT * FROM QNA_TABLE WHERE QNA_NUM=" + num;

		Statement stmt = conn.createStatement();

		ResultSet rs = stmt.executeQuery(sql);

		while (rs.next()) {

			int qna_num = rs.getInt("QNA_NUM"); // 글 번호
			String user_id = rs.getString("USER_ID"); // 작성자 ID
			String qna_title = rs.getString("QNA_TITLE"); // 리뷰 제목
			String qna_content = rs.getString("QNA_CONTENT"); // 리뷰 내용
			Date qna_regdate = rs.getDate("QNA_REGDATE"); // 리뷰 작성일

			bean.setQna_num(qna_num);
			bean.setUser_id(user_id);
			bean.setQna_title(qna_title);
			bean.setQna_content(qna_content);
			bean.setQna_regdate(qna_regdate);

		}

		conn.close();

		return bean;

	}
	
	
	public static void qna_delete(int num) throws Exception{
		
		Connection conn = DBConnector.getConnection();

		// SQL
		String sql = "DELETE FROM QNA_TABLE WHERE QNA_NUM=" + num;

		Statement stmt = conn.createStatement();
		stmt.executeQuery(sql);
		
		conn.close();
	
		
	}
	
public static void qna_modi(int num) throws Exception{
		
	// 빈객체 생성
			qnaVO bean = new qnaVO();

	try {

		// DB연결
		Connection conn = DBConnector.getConnection();

		// SQL 문
		String sql = "INSERT INTO QNA_TABLE(qna_num, user_id, qna_title, qna_content, qna_regdate)"
				+ " VALUES(SEQ_EBOOK.nextval, ?, ?, ?, sysdate)";

		PreparedStatement psmt = conn.prepareStatement(sql);

		psmt.setString(1, bean.getUser_id());
		psmt.setString(2, bean.getQna_title());
		psmt.setString(3, bean.getQna_content());

		// SQL 실행
		psmt.execute();

		// DB 연결 종료
		conn.close();

	} catch (Exception e) {
		e.printStackTrace();
	}

} // review_write()

	
}
