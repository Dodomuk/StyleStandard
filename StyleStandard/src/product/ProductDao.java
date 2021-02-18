package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.error.DataAccessException;
import common.error.ErrorCode;
import common.jdbc.JDBCTemplate;
import order.Order;

public class ProductDao {

	JDBCTemplate jdt =  JDBCTemplate.getInstance();

	//게시판 테이블에 게시글 저장
	
	public int checkOverlappingPRODUCT(Connection conn, int product_code) { //같은 코드가 있는지 확인
		PreparedStatement pstm = null;
		boolean rset = false;
		int res = 0;
		try {
			String query = "select product_code from product where product_code=?";

			pstm = conn.prepareStatement(query);
			pstm.setInt(1, product_code);
			rset = pstm.execute();

			if(rset == true) {
				res++;
			}}catch (SQLException e) {
				throw new DataAccessException(ErrorCode.PD01, e);
			}finally {
				jdt.close(pstm);
			}
			
			return res;
	}
	
	public int insertProduct(Connection conn, Product product) {
		
		int res = 0;
		PreparedStatement pstm = null;
		
		try {
			String sql = "insert into product "
					+ "(product_code,product_quantity,product_price,product_size,product_name,product_img,product_info,product_category)"
					+ "values(?,?,?,?,?,?,?,?)";
			
			pstm = conn.prepareStatement(sql);
			
			pstm.setInt(1, product.getProduct_code());
			pstm.setInt(2, product.getProduct_quantity());
			pstm.setInt(3, product.getProduct_price());
			pstm.setString(4, product.getProduct_size());
			pstm.setString(5, product.getProduct_name());
			pstm.setString(6, product.getProduct_img());
			pstm.setString(7, product.getProduct_info());
			pstm.setInt(8, product.getProduct_category());
			
			res = pstm.executeUpdate();
			
		} catch (SQLException e) {
			throw new DataAccessException(ErrorCode.PD02, e);
		}finally {
			jdt.close(pstm);
		}
		System.out.println("시스템 정상 DAO");
		return res;
	}
	
	public List<Product> selectProduct(Connection conn,int categoryNum){
	    
		List<Product> list = new ArrayList<>();
		PreparedStatement pstm = null;
		ResultSet rset = null;
		
		try {
			String sql = "select * from product where product_category=?";
		
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1,categoryNum);
			rset= pstm.executeQuery();
			while (rset.next()) {
				Product product = new Product();
				product.setProduct_code(rset.getInt("product_code"));
				product.setProduct_price(rset.getInt("product_price"));
				product.setProduct_name(rset.getString("product_name"));
				product.setProduct_img(rset.getString("product_img"));
				product.setProduct_info(rset.getString("product_info"));
				list.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdt.close(rset, pstm);
		}
		System.out.println("프로덕트리스트 다오 정상");
		return list;
	}
	
	
	 
}
