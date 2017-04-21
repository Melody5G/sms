<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = null;
	String token = null;
	String requestMethod = null;
		   
	request.setCharacterEncoding("utf-8");
	
	try{
	    String jdbcDriver = "jdbc:mysql://localhost:3306/fcm?" + "useUnicode=true&characterEncoding=utf8&useSSL=false";
	    String dbUser = "root";
		String dbPass = "soo1194";
	    conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	    out.println("DB 연결이 성공");
	    
	}catch(SQLException ex){
	    out.println("DB 연결이 실패");
	    ex.printStackTrace();
	}
	
	
	token = request.getParameter("Token");
	
	//token = "9990dsfs321";
	
	if( token == null || token.equals("") ){
	    out.println("토큰값이 전달 되지 않았습니다.");
	}else{
	    
	    sql = "INSERT INTO fcm(Token) VALUES(?)";
	    pstmt = conn.prepareStatement(sql);
	    
	    pstmt.setString(1,token);
	    
	    pstmt.executeUpdate();
	    out.println("insert 성공");
	}
%>
