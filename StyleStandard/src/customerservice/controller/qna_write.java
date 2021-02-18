package customerservice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customerservice.model.dao.qna_DAO;
import customerservice.model.vo.qnaVO;

/**
 * Servlet implementation class review_write
 */
@WebServlet("/qna_write")
public class qna_write extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public qna_write() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		System.out.println("qna_write 서블릿 요청");
		
		//파라미터 추출
		
		String user_id = request.getParameter("user_id");
		String qna_title = request.getParameter("qna_title");
		String qna_content = request.getParameter("qna_content");
		
		
		// 값 출력 test
		System.out.println(user_id);
		System.out.println(qna_title);
		System.out.println(qna_content);
		
		// 빈 객체에 데이터 set
		qnaVO bean = new qnaVO();
		
		bean.setUser_id(user_id);
		bean.setQna_title(qna_title);
		bean.setQna_content(qna_content);
		
		
		//DB에 저장
		qna_DAO.qna_write(bean);
		
		//페이지 이동
		String site = "qna.credu";
		response.sendRedirect(site);
		
		
		
		// DB 처리
		/*
		 * 
		 * INSERT INTO REVIEW_TABLE(review_num, user_id, review_goods_name, review_title, review_content, review_cnt, review_star, review_buy_opt, review_regdate)
		   VALUES (review_num.nextval, 'zzzz2222', '이동기', '이동기 구매', '이동기 완전 좋아요!', 0, 4, 1, sysdate);
		 * 
		 */
		
		/*
		Connection conn = DBConnector.getConnection();
		
		String sql = "INSERT INTO REVIEW_TABLE(review_num, user_id, review_goods_name, review_title, review_content, review_cnt, review_star, review_buy_opt, review_regdate)"
				   + " VALUES(review_num.nextval, ?, ?, ?, ?, 0, ?, ?, sysdate)";
		
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, user_id);
		psmt.setString(2, review_goods_name);
		psmt.setString(3, review_title);
		psmt.setString(4, review_content);
		psmt.setInt(5, review_star);
		psmt.setInt(6, review_buy_opt);
		
		//SQL 실행
		psmt.execute();
								
		//DB 연결 종료
		conn.close();
		*/
			
			
				
		
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
