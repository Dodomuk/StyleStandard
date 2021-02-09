package customer;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import common.jdbc.JDBCTemplate;

public class CustomerService {

		
		CustomerDao customerDao = new CustomerDao();
		JDBCTemplate jdt = JDBCTemplate.getInstance();
		
		public Customer customerAuthenticate(String user_id, String user_pw){	
			//Connection 생성
			Connection conn = jdt.getConnection();

			//Dao에게 Connection 주입.
			//Dao는 주입받은 Connection 객체로 Statement객체를 만들어 쿼리를 실행하게 되고
			//따라서 Service에서 해당 쿼리를 commit, rollback처리할 수 있게 된다.
			Customer res = customerDao.customerAuthenticate(conn, user_id, user_pw);
			
			//쿼리 수행이 끝났으면 Connection을 시스템자원에 반환
			jdt.close(conn);
			return res;
		}
		
		
		public Customer selectMemberById(String user_id){	
			Connection conn = jdt.getConnection();
			Customer res = customerDao.selectCustomerById(conn,user_id);
			jdt.close(conn);
			return res;
		}
		
		public ArrayList<Customer> selectCustomerList(){
			Connection conn = jdt.getConnection();
			ArrayList<Customer> memberList = customerDao.selectCustomerList(conn);
			jdt.close(conn);
			return memberList;
		}
		
		public int insertCustomer(Customer customer) throws SQLException{
			Connection conn = jdt.getConnection();
			int res = 0;
			try {
				
				res = customerDao.insertCustomer(conn,customer);
				jdt.commit(conn);
				
			} finally {
				jdt.close(conn);
			}
			
			return res;
		}
		
		public int updateCustomer(Customer customer) throws SQLException{
			Connection conn = jdt.getConnection();
			int res = 0;
			try {
				res = customerDao.updateCustomer(conn,customer);
				jdt.commit(conn);
			} finally {
				jdt.close(conn);
			}
			return res;
		}
		
		public int deleteCustomer(String user_id) throws SQLException{
			Connection conn = jdt.getConnection();
			int res = 0;
			try {
				res = customerDao.deleteCustomer(conn, user_id);
				jdt.commit(conn);
			} finally {
				jdt.close(conn);
			}
			return res;
		}

}
