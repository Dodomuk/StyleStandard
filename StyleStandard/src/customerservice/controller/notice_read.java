package customerservice.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customerservice.model.dao.notice_DAO;
import customerservice.model.vo.noticeVO;

/**
 * Servlet implementation class review_read
 */
@WebServlet("/notice_read")
public class notice_read extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public notice_read() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("notice_read.credu 요청");
	
		
		//파라미터 한글처리
		request.setCharacterEncoding("utf-8");
		
		//파라미터값 추출
		int notice_num = Integer.parseInt(request.getParameter("notice_num"));
		
		
		// 해당 리뷰글 정보 불러오기.
		try {
			
			noticeVO bean = notice_DAO.notice_read(notice_num);
		
			// System.out.println(bean.getReview_num());
			
			// 어떤 형태로 데이터를 받는지 정의해줘야함.
			response.setContentType("text/plain; charset=utf-8");
			
			// 응답 결과를 출력할 스트림 생성
			PrintWriter pw = response.getWriter();
			pw.print(bean.getnotice_content());
			
					
		
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
