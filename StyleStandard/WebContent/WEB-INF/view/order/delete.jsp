<%@page import="org.apache.jasper.tagplugins.jstl.core.Redirect"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="common.jdbc.JDBCTemplate"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException"%>
<%
request.setCharacterEncoding("utf-8");

String idx = request.getParameter("idx");
System.out.println(idx);
	JDBCTemplate jdt = JDBCTemplate.getInstance();
	Connection conn = jdt.getConnection();
	 PreparedStatement pstm = null; 
	
    try{
    
    String sql = "delete from st_order where order_code=?";
    
    pstm = conn.prepareStatement(sql);
    pstm.setInt(1,Integer.parseInt(idx));
    pstm.executeUpdate();

    }
    catch(SQLException e){
    	out.println(e);
    }
    
    pstm.close();
    conn.close();
    
    response.sendRedirect("../order/order_payment");
%>