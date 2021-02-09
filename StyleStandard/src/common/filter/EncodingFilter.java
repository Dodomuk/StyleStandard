package common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


public class EncodingFilter implements Filter {

	 public EncodingFilter() {
	        // TODO Auto-generated constructor stub
	    }
	    
	    //filter가 컨테이너에 의해 삭제 될 때 호출
		public void destroy() {
			// TODO Auto-generated method stub
		}

		public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
			// TODO Auto-generated method stub
			// place your code here
			request.setCharacterEncoding("utf-8");
			
			//ServletResponse 객체에는 setHeader() 가 없기 때문에
			//contentType을 지정할 수 있게 해주는 setContentType 메서드 사용
			
			//response.setContentType("text/html; charset=utf-8");
			
			//같은 url-pattern 으로 여러개의 filter를 지정할 수 있다.
			//해당 filter 들은 filter-chain형태로 관리되며, web.xml에 등록한 순서대로 실행된다.
			// 필터체인을 탐색해 다음 필터가 있다면 다음 필터의 doFilter 메서드를 호출
			// 다음 필터가 없다면 servlet을 호출한다.
			chain.doFilter(request, response);
		}

		//filter가 생성될 때 실행되는 메서드
		public void init(FilterConfig fConfig) throws ServletException {
			// TODO Auto-generated method stub
		}

	}
