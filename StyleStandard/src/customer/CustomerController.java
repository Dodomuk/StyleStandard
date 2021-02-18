package customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/member/*")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	public CustomerController() {
		super();
		// TODO Auto-generated constructor stub
	}

	Customer customer = new Customer();
	CustomerService cServ = new CustomerService();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		String[] uriArr = uri.split("/");

		switch (uriArr[uriArr.length - 1]) {
		case "login.jsp":
			login(request, response);
			break;
		case "logout":
			logout(request, response);
			break;
		case "loginpage.jsp":
			loginpage(request, response);
			break;
		case "loginDispatch":
			loginDispatch(request, response);
			break;
		case "mypage.jsp":
			mypage(request, response);
			break;
		case "memberinfo.jsp":
			memberinfo(request, response);
			break;
		case "memberinfo_fixed":
			memberinfo_fixed(request, response);
			break;
		case "memberjoin.jsp":
			memberjoin(request, response);
			break;
		case "welcome.jsp":
			welcome(request, response);
			break;
		case "memberwithdraw.jsp":
			memberwithdraw(request, response);
			break;
		case "memberDelete":
			memberDelete(request, response);
			break;
		case "rentalExtension":
			rentalExtension(request, response);
			break;
		case "rentalExtensionComplete":
			rentalExtensionComplete(request, response);
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { // 로그인/회원가입
																														// 페이지

		request.getRequestDispatcher("/WEB-INF/view/member/login.jsp").forward(request, response);
	}

	private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { // 로그인/회원가입
																															// 페이지
		HttpSession session = request.getSession();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('로그아웃 되었습니다~'); location.href='" + "/index" + "';</script>");
		session.invalidate();
	}

	private void loginpage(HttpServletRequest request, HttpServletResponse response) // 로그인 페이지
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/member/loginpage.jsp").forward(request, response);
	}

	private void loginDispatch(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { // 회원의 정보를 받아온다

		request.setCharacterEncoding("UTF-8");

		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");

		Customer customer = cServ.customerAuthenticate(user_id, user_pw);
		System.out.println(user_id);
		System.out.println(user_pw);

		if ((user_id).equals(customer.getUser_id()) && (user_pw).equals(customer.getUser_pw())) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			System.out.println(customer);
			request.getSession().setAttribute("customer", customer);
			request.getSession().setAttribute("id", customer.getUser_id());
			request.getSession().setAttribute("name", customer.getName());
			request.getSession().setAttribute("email", customer.getEmail());
			request.getSession().setAttribute("phone", customer.getPhone());
			request.getSession().setAttribute("authority", customer.getAuthority_cd());
			System.out.println(customer);
			System.out.println(customer.getAuthority_cd());
			writer.println(
					"<script>alert('어서오세요 " + customer.getName() + " 님~'); location.href='" + "/index" + "';</script>");
			writer.close();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('존재하는 아이디가 없거나 비밀번호를 잘못 입력하셨습니다.'); location.href='" + "/member/loginpage.jsp"
					+ "';</script>");
			writer.close();

		}

	}

	private void mypage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if ((String) session.getAttribute("authority") == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('로그인을 먼저 해주세요!.'); location.href='" + "/member/loginpage.jsp" + "';</script>");
			writer.close();
		}
		request.getRequestDispatcher("/WEB-INF/view/member/mypage.jsp").forward(request, response);
	}

	private void memberinfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/member/memberinfo.jsp").forward(request, response);

	}

	private void memberinfo_fixed(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String user_id = (String) session.getAttribute("id");
		String user_pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String sex = request.getParameter("gender");
		String name = request.getParameter("name");

		customer.setUser_id(user_id);
		customer.setUser_pw(user_pw);
		customer.setEmail(email);
		customer.setSex(sex);
		customer.setName(name);

		try {
			int res = cServ.updateCustomer(customer);
			System.out.println(customer.getUser_id());
			System.out.println(customer.getUser_pw());

			if (res == 1) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter writer = response.getWriter();
				writer.println(
						"<script>alert('회원정보가 수정되었습니다~ 다시 로그인 하세요!'); location.href='" + "/index" + "';</script>");
				writer.close();
				session.invalidate();
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter writer = response.getWriter();
				writer.println(
						"<script>alert('입력이 잘못되었습니다 ㅠ'); location.href='" + "/member/memberinfo.jsp" + "';</script>");
				writer.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void memberjoin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/view/member/memberjoin.jsp").forward(request, response);
	}

	private void welcome(HttpServletRequest request, HttpServletResponse response) // 회원가입 성공실패의 여부를 출력해준다.
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String sex = request.getParameter("gender");
		String name = request.getParameter("name");

		customer.setUser_id(user_id);
		customer.setUser_pw(user_pw);
		customer.setEmail(email);
		customer.setSex(sex);
		customer.setName(name);

		try {
			int res = cServ.insertCustomer(customer);
			System.out.println(customer.getUser_id());
			System.out.println(customer.getUser_pw());

			if (res == 1) {
				System.out.println("회원가입을 축하해요!");
				request.getRequestDispatcher("/WEB-INF/view/member/welcome.jsp").forward(request, response);
			} else {
				System.out.println("이미 존재하는 회원.");
				request.getRequestDispatcher("/WEB-INF/view/member/not_welcome.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void memberwithdraw(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/member/memberwithdraw.jsp").forward(request, response);
	}

	private void memberDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");

		String id = (String) session.getAttribute("id");
		String input_pw1 = request.getParameter("pw_1");
		String input_pw2 = request.getParameter("pw_2");
		System.out.println(id);
		System.out.println(input_pw1);
		System.out.println(input_pw2);
		if (!(input_pw1.equals(input_pw2))) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('비밀번호가 잘못 입력되었습니다ㅠ'); location.href='" + "/member/memberwithdraw.jsp"
					+ "';</script>");
			writer.close();
		} else {
			try {
				cServ.deleteCustomer(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("sql예외 발생");
				e.printStackTrace();
			}
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('삭제되었습니다. 그동안 감사했습니다ㅠ'); location.href='" + "/index" + "';</script>");
			session.invalidate();
		}
	}

	private void rentalExtension(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/view/member/rental_extension.jsp").forward(request, response);

	}

	private void rentalExtensionComplete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("주문연장완료");
		request.getRequestDispatcher("/WEB-INF/view/member/rental_extension_complete.jsp").forward(request, response);

	}

}
