package product;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import order.Order;

/**
 * Servlet implementation class Stylecontroller
 */
@WebServlet("/style/*")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }
    		
	Product product = new Product();
	ProductService productService = new ProductService();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] uriArr = request.getRequestURI().split("/");
		switch (uriArr[uriArr.length - 1]) {
		case "style_men": style_men(request, response); //호스트주소/style/style_men 하면 화면 출력~
			break;
		case "style_woman": style_woman(request, response);//호스트주소/style/style_women 하면 화면 출력~
			break;
		case "style_reg" : style_register(request, response);///호스트주소/style/style_reg (제품 등록 페이지)
            break;
		case "style_regComp" : style_regComp(request, response);///호스트주소/style/style_reg (제품 등록 페이지)
            break;
		case "men_detail" : men_detail(request, response);///호스트주소/purchase/purchasepage (제품 구매 상세 페이지)
	        break;	
		case "woman_detail" : woman_detail(request, response);///호스트주소/purchase/purchasepage (제품 구매 상세 페이지)
        break;	
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	

	private void style_men(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        List<Product> productList = productService.selectProduct(2);
        System.out.println(productList);
        request.getSession().setAttribute("productList", productList);
        request.setAttribute("orderlist", productList);
		
		request.getRequestDispatcher("/WEB-INF/view/style/men.jsp").forward(request, response);

	}
	
	private void style_woman(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        List<Product> productList = productService.selectProduct(1);
        System.out.println(productList);
        request.getSession().setAttribute("productList", productList);
        request.setAttribute("orderlist", productList);
		
		
		request.getRequestDispatcher("/WEB-INF/view/style/woman.jsp").forward(request, response);

	}
	
    private void style_register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
    	 HttpSession session = request.getSession();
    	 System.out.println((String)session.getAttribute("authority"));
    	if(((String)session.getAttribute("authority")).equals("고객")){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('관리자만 접근 가능합니다!.'); location.href='"+"/member/mypage.jsp"+"';</script>"); 
			writer.close();
		}
    	request.getRequestDispatcher("/WEB-INF/view/style/style_reg.jsp").forward(request, response);
    }
    
    private void style_regComp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
        
    	request.setCharacterEncoding("UTF-8");
    	
		int product_code = (int)(Math.random()*89999999+10000000);
		
		while(productService.checkOverlappingPRODUCT(product_code) == 0) {

			product_code = (int)(Math.random()*89999999+10000000);
		
		}
    	
    	String p_name = request.getParameter("p_name");
    	int p_price = Integer.parseInt(request.getParameter("p_price")); //폼에서 파라미터로 넘어올때 문자열로 넘어오기 때문에 price와 quantity는 정수형으로 변환해줌
    	String p_size = request.getParameter("p_size");
    	int p_quantity =  Integer.parseInt(request.getParameter("p_quantity"));
    	String p_img = request.getParameter("p_img");
    	String p_info = request.getParameter("p_info");
    	int p_category = Integer.parseInt(request.getParameter("p_category"));
    	
    	product.setProduct_code(product_code);
    	product.setProduct_name(p_name);
    	product.setProduct_price(p_price);
    	product.setProduct_size(p_size);
    	product.setProduct_quantity(p_quantity);
    	product.setProduct_img(p_img);
    	product.setProduct_info(p_info);
    	product.setProduct_category(p_category);
    	
    	System.out.println(product_code);
    	System.out.println(p_name);
    	System.out.println(p_quantity);
    	System.out.println(p_category);
    	
    	productService.insertProduct(product);
  
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter writer = response.getWriter();
		writer.println("<script>alert('옷이 등록되었습니다 감사합니다!'); location.href='"+"/member/mypage.jpg"+"';</script>");
    }
   
    
	private void men_detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {

		
    	request.getRequestDispatcher("/WEB-INF/view/style/men_detail.jsp").forward(request, response);
    }
	private void woman_detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {

		
    	request.getRequestDispatcher("/WEB-INF/view/style/woman_detail.jsp").forward(request, response);
    }

}
