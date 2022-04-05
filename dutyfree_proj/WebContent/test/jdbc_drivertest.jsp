<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%
  Connection con=null;
  try{	
	String url="jdbc:oracle:thin:@edudb_high?TNS_ADMIN=C://dev//oracle_wallet//Wallet_edudb";
    String uid="pt2";
    String pwd="Guseo2whghkdlxld";
    String driver="oracle.jdbc.driver.OracleDriver";
  	Class.forName(driver);
	con=DriverManager.getConnection(url,uid ,pwd);
		out.println("제대로 연결되었습니다.");
	}catch(Exception e){ 
		e.printStackTrace();
		out.println("연결에 실패하였습니다.");
	}
%>