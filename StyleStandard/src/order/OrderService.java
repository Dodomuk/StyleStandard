package order;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import common.error.DataAccessException;
import common.error.ToAlertException;
import common.jdbc.JDBCTemplate;
import customer.Customer;
import product.Product;

public class OrderService {
	
	OrderDao orderDao = new OrderDao();
	JDBCTemplate jdt = JDBCTemplate.getInstance();
	
	public int checkOverlappingID(int orderID){	
		Connection conn = jdt.getConnection();
		int res = orderDao.checkOverlappingID(conn,orderID);
		jdt.close(conn);
		return res;
	}
	
	
	public int insertOrder(Order order) {
		Connection conn = jdt.getConnection();
		//게시글 저장
		int res = 0;
		try {
			res = orderDao.insertOrder(conn, order);
			jdt.commit(conn);
		}catch(DataAccessException e) {
			jdt.rollback(conn);
			throw new ToAlertException(e.error,e);
		}finally {
			jdt.close(conn);
		}
		System.out.println("시스템 정상");
		return res;
	}
	
	public List<Order> selectOrder(String user_id){
		Connection conn = jdt.getConnection();
		System.out.println("리스트 서비스 정상");
		List<Order> orderList = orderDao.selectOrder(conn, user_id);
		jdt.close(conn);
		return orderList;
	}
	
	public Product selectProductById(int product_code) {
		Connection conn = jdt.getConnection();
		Product res = 	orderDao.selectProductByCode(conn, product_code);
		jdt.close(conn);

		return res;
	}
	 
	
}
