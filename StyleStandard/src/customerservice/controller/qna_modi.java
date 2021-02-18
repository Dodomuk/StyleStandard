package customerservice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customerservice.model.dao.qna_DAO;

/**
 * Servlet implementation class review_modi
 */
@WebServlet("/qna_modi")
public class qna_modi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public qna_modi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		System.out.println("qna_modi.credu 요청");
		
		// 파라미터 한글처리
				request.setCharacterEncoding("utf-8");

				// 파라미터값 추출
				int qna_num = Integer.parseInt(request.getParameter("qna_num"));

				// 해당 리뷰글 번호로 해당 글 삭제.
				try {

					qna_DAO.qna_modi(qna_num);

					// 어떤 형태로 데이터를 받는지 정의해줘야함.
					// response.setContentType("text/plain; charset=utf-8");

					// 응답 결과를 출력할 스트림 생성
					// PrintWriter pw = response.getWriter();
					// pw.print(bean.getReview_content());
					
					//페이지 이동
					//String site = "review.credu";
					//response.sendRedirect(site);

				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
