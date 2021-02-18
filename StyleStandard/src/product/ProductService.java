package product;

import java.sql.Connection;
import java.util.List;

import common.error.DataAccessException;
import common.error.ToAlertException;
import common.jdbc.JDBCTemplate;
import order.Order;

public class ProductService {

	ProductDao productDao = new ProductDao();

	JDBCTemplate jdt = JDBCTemplate.getInstance();

	public int checkOverlappingPRODUCT(int product_code) {
		Connection conn = jdt.getConnection();
		int res = productDao.checkOverlappingPRODUCT(conn, product_code);
		jdt.close(conn);
		return res;

	}

	public int insertProduct(Product product) {
		Connection conn = jdt.getConnection();
		// 게시글 저장
		int res = 0;
		try {
			res = productDao.insertProduct(conn, product);
			jdt.commit(conn);
		} catch (DataAccessException e) {
			jdt.rollback(conn);
			throw new ToAlertException(e.error, e);
		} finally {
			jdt.close(conn);
		}
		System.out.println("시스템 정상 SERVICE");
		return res;
	}
	
	  public List<Product> selectProduct(int categoryNum){ 
		  Connection conn =jdt.getConnection();
		  System.out.println("프로덕트 리스트 서비스 정상"); 
		  List<Product> productList = productDao.selectProduct(conn, categoryNum); 
		  jdt.close(conn);
	  return productList; 
	  }
	 


}
