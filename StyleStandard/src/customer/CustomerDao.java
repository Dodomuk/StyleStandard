package customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.jdbc.JDBCTemplate;

public class CustomerDao {

	JDBCTemplate jdt = JDBCTemplate.getInstance();

	//밑에 customerSelectById랑 중복되므로 삭제

	  public Customer customerAuthenticate(Connection conn, String user_id, String user_pw) {  
	  Customer customer = new Customer(); 
	  PreparedStatement pstm = null; 
	  ResultSet rset = null;
	 
	  try { String query = "select * from st_customer where user_id=? and user_pw=?";
	  
	 pstm = conn.prepareStatement(query);
	  
	  pstm.setString(1, user_id);
	  pstm.setString(2, user_pw);
	  rset = pstm.executeQuery();
	  
	  if (rset.next()) { 
	  customer.setUser_id(rset.getString("user_id"));
	  customer.setUser_pw(rset.getString("user_pw"));
	  customer.setName(rset.getString("name"));
	  customer.setEmail(rset.getString("email"));
	  customer.setSex(rset.getString("sex")); 
	  customer.setAuthority_cd("고객");
	  
	  System.out.println("불러오는중"); 
	  }
	  
	  } catch (SQLException e) { // TODO Auto-generated catch block
	  e.printStackTrace();
	  } finally {
	  jdt.close(rset, conn); }
	  
	  return customer;
	  
	  }


	public Customer selectCustomerById(Connection conn, String userId) {
		Customer customer = new Customer();
		PreparedStatement pstm = null;
		ResultSet rset = null;

		try {

			String query = "select * from st_customer where user_id = ?";

			pstm = conn.prepareStatement(query);
			pstm.setString(1, userId);
			rset = pstm.executeQuery();

			if (rset.next()) {
				
				customer.setUser_id(rset.getString("user_id"));
				customer.setUser_pw(rset.getString("user_pw"));
				customer.setName(rset.getString("name"));
				customer.setEmail(rset.getString("email"));
				customer.setSex(rset.getString("sex"));
				customer.setAuthority_cd("고객");

			}
		} catch (SQLException e) {

			e.printStackTrace();

		} finally {
			jdt.close(rset, pstm);
		}
		return customer;

	}

	public ArrayList<Customer> selectCustomerList(Connection conn) {
		Customer customer = new Customer();
		ArrayList<Customer> customerList = new ArrayList<>();
		PreparedStatement pstm = null;
		ResultSet rset = null;

		try {
			String query = "select * from st_customer";
			pstm = conn.prepareStatement(query);
			rset = pstm.executeQuery();

			while (rset.next()) {

				customer.setUser_id(rset.getString("user_id"));
				customer.setName(rset.getString("name"));
				customer.setEmail(rset.getString("email"));
				customer.setSex(rset.getString("sex"));
				customer.setAuthority_cd("고객");
				customerList.add(customer);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdt.close(rset, pstm);
		}
		return customerList;
	}

	public int insertCustomer(Connection conn, Customer customer) {

		int res = 0;
		PreparedStatement pstm = null;

		try {
			String query = "insert into st_customer(user_id,user_pw,name,email,sex,authority_cd) " + "values(?,?,?,?,?,?)";
			pstm = conn.prepareStatement(query);
			pstm.setString(1, customer.getUser_id());
			pstm.setString(2, customer.getUser_pw());
			pstm.setString(3, customer.getName());
			pstm.setString(4, customer.getEmail());
			pstm.setString(5, customer.getSex());
			pstm.setString(6, "고객");

			res = pstm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			jdt.close(pstm);
		}

		return res;
	}

	// 관리자로 변경해줌
	public int updateCustomer(Connection conn, Customer customer) {

		int res = 0;
		PreparedStatement pstm = null;

		try {
			String query = "update st_customer set authority_cd = ? where user_id = ?";

			pstm = conn.prepareStatement(query);

			pstm.setString(1, "관리자");
			pstm.setString(2, customer.getUser_id());

			res = pstm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			jdt.close(pstm);
		}

		return res;
	}

	public int deleteCustomer(Connection conn, String user_id) {
		int res = 0;
		PreparedStatement pstm = null;

		try {
			String query = "delete from st_customer where user_id = ?'";
			pstm = conn.prepareStatement(query);
			pstm.setString(1, user_id);
			res = pstm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdt.close(pstm);
		}
		return res;
	}

}
