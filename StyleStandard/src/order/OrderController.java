package order;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import product.Product;

/**
 * Servlet implementation class IndexController
 */
@WebServlet("/order/*")
public class OrderController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	OrderService orderService = new OrderService();
	Order order = new Order();
	Product product = new Product();

	/**
	 * Default constructor.
	 */
	public OrderController() {
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] uriArr = request.getRequestURI().split("/");
		switch (uriArr[uriArr.length - 1]) {
		case "order":
			order(request, response); 
			break;
		case "order_payment":
			order_payment(request, response);
			break;
		case "orderlist":
			orderlist(request, response);
			break;
		case "product1" : product1(request, response);
		break;
		case "delete" : delete(request, response);
		break;
		case "order_payment_mypage" : order_payment_mypage(request, response);
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

	private void order(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/view/order/order.jsp").forward(request, response);

	}

	private void order_payment(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("여기는페이먼트");

		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");

		int order_code = (int) (Math.random() * 89999999 + 10000000);

		while (orderService.checkOverlappingID(order_code) == 0) {

			order_code = (int) (Math.random() * 89999999 + 10000000);

		}

		String user_id = (String) session.getAttribute("id");

		String user_name = request.getParameter("inputPerson");

		String user_phone = request.getParameter("inputTell");

		String ship_address = request.getParameter("inputDestination");

		String ship_notice = request.getParameter("inputShipNotice");

		String product_name = (String) session.getAttribute("product_name");

		int order_price = ((Integer) session.getAttribute("order_price")).intValue();
		int product_code = ((Integer) session.getAttribute("product_code")).intValue();

		String order_img = (String) session.getAttribute("order_img");

		System.out.println(order_code);
		System.out.println(user_id);
		System.out.println(ship_address);
		System.out.println(product_name);
		System.out.println(product_code);
		System.out.println(order_price);
		System.out.println(order_img);

		order.setOrder_code(order_code);
		order.setUser_id(user_id);
		order.setShip_address(ship_address);
		order.setUser_name(user_name);
		order.setUser_phone(user_phone);
		order.setShip_notice(ship_notice);
		order.setProduct_code(product_code);
		order.setOrder_price(order_price);
		order.setProduct_name(product_name);
		order.setOrder_img(order_img);

		orderService.insertOrder(order);

		List<Order> orderlist = orderService.selectOrder(user_id);
		System.out.println(orderlist);
		session.setAttribute("orderlist", orderlist);
		request.setCharacterEncoding("UTF-8");
		request.getRequestDispatcher("/WEB-INF/view/order/order.jsp").forward(request, response);

	}
	
	private void order_payment_mypage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String user_id = (String) session.getAttribute("id");

		List<Order> orderlist = orderService.selectOrder(user_id);
		System.out.println(orderlist);
		session.setAttribute("orderlist", orderlist);
		request.setCharacterEncoding("UTF-8");
		request.getRequestDispatcher("/WEB-INF/view/order/order.jsp").forward(request, response);

	}

	private void orderlist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/view/order/orderlist.jsp").forward(request, response);

	}

	private void product1(HttpServletRequest request, HttpServletResponse response) // 상품 1
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		Product res = orderService.selectProductById(34059208);

		int product_code = res.getProduct_code();
		int order_price = res.getProduct_price();
		String product_name = res.getProduct_name();
		String order_img = res.getProduct_img();

		System.out.println(product_code);
		System.out.println(order_price);
		request.getSession().setAttribute("product_code", product_code);
		request.getSession().setAttribute("order_price", order_price);
		request.getSession().setAttribute("product_name", product_name);
		request.getSession().setAttribute("order_img", order_img);
		request.getRequestDispatcher("/WEB-INF/view/order/order_payment.jsp").forward(request, response);

	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/view/order/delete.jsp").forward(request, response);

	}

}
