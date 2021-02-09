package login;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import customer.Customer;
import customer.CustomerService;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/login/*")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/login/login.jsp").forward(request, response);		
		/*
		 * String data = request.getParameter("data"); Gson gson = new Gson(); Map
		 * parsedData = gson.fromJson(data, Map.class);
		 * 
		 * String user_id = (String)parsedData.get("id"); String name =
		 * (String)parsedData.get("name");
		 */
//		Customer customer = CustomerService.selectMemberById("user_id"); //패스워드를 받지 못함
		

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
