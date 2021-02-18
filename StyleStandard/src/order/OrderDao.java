package order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.error.DataAccessException;
import common.error.ErrorCode;
import common.jdbc.JDBCTemplate;
import product.Product;

public class OrderDao {

	JDBCTemplate jdt =  JDBCTemplate.getInstance();
	Product product = new Product();
	//게시판 테이블에 게시글 저장
	
	public int checkOverlappingID(Connection conn, int orderID) { //같은 코드가 있는지 확인
		PreparedStatement pstm = null;
		boolean rset = false;
		int res = 0;
		try {

			String query = "select order_code from st_order where order_code=?";

			pstm = conn.prepareStatement(query);
			pstm.setInt(1, orderID);
			rset = pstm.execute();

			if(rset == true) {
				res++;
			}}catch (SQLException e) {
				throw new DataAccessException(ErrorCode.CST02, e);
			}finally {
				jdt.close(pstm);
			}
			
			return res;
	}
	
	public int insertOrder(Connection conn, Order order) {
		int res = 0;
		PreparedStatement pstm = null;
		
		try {
			String sql = "insert into st_order "
					+ "(order_code,user_id,ship_address,product_code,user_name,user_phone,ship_notice,order_price,product_name,order_img) "
					+ "values(?,?,?,?,?,?,?,?,?,?)";
			pstm = conn.prepareStatement(sql);
			
			pstm.setInt(1, order.getOrder_code());
			pstm.setString(2, order.getUser_id());
			pstm.setString(3, order.getShip_address());
			pstm.setInt(4, order.getProduct_code());
			pstm.setString(5, order.getUser_name());
			pstm.setString(6, order.getUser_phone());
			pstm.setString(7, order.getShip_notice());
			pstm.setInt(8, order.getOrder_price());
			pstm.setString(9, order.getProduct_name());
			pstm.setString(10, order.getOrder_img());
			
			res = pstm.executeUpdate();
		} catch (SQLException e) {
			throw new DataAccessException(ErrorCode.CST02, e);
		}finally {
			jdt.close(pstm);
		}
		System.out.println("시스템 정상 DAO");
		return res;
	}
	
	public List<Order> selectOrder(Connection conn,String user_id){
	    
		List<Order> list = new ArrayList<>();
		PreparedStatement pstm = null;
		ResultSet rset = null;
		
		try {
			String sql = "select * from st_order where user_id=?";
		
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,user_id);
			rset= pstm.executeQuery();
		
			while (rset.next()) {
				Order order = new Order();
				order.setOrder_code(rset.getInt("order_code"));
				order.setProduct_code(rset.getInt("product_code"));
                order.setShip_address(rset.getString("ship_address"));
                order.setUser_name(rset.getString("user_name"));
                order.setUser_phone(rset.getString("user_phone"));
                order.setShip_notice(rset.getString("ship_notice"));
                order.setOrder_price(rset.getInt("order_price"));
                order.setProduct_name(rset.getString("product_name"));
                order.setOrder_img(rset.getString("order_img"));
                
				list.add(order);
				System.out.println(list.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdt.close(rset, pstm);
		}
		System.out.println("리스트 다오 정상"+ list.toString());
		return list;
	}
	
	public Product selectProductByCode(Connection conn, int product_code) {
		Product product = new Product();
		PreparedStatement pstm = null;
		ResultSet rset = null;
		try {
			String sql = "select * from product "
					+ "where product_code = ?";
			
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, product_code);			
			rset = pstm.executeQuery();
			
if (rset.next()) {
				
				product.setProduct_code(rset.getInt("product_code"));
				product.setProduct_price(rset.getInt("product_price"));
				product.setProduct_name(rset.getString("product_name"));
                product.setProduct_img(rset.getString("product_img"));
		} }catch (SQLException e) {
			throw new DataAccessException(ErrorCode.PD02, e);
		}finally {
			jdt.close(pstm);
		}
		System.out.println("prodcutByCode 시스템 정상 DAO");

		return product;
	}
}
