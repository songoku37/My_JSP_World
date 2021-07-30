package com.member;

 import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Vector;


 
 public class RegisterMgr {
    
 	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
 	private final String JDBC_URL = "jdbc:mysql://:3307/jsp?characterEncoding=utf-8";
 	// 타임존 에러시
 	// jdbc:mysql://localhost:3306/DB이름?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
 	// jdbc:mysql://ip:port/testdb?characterEncoding=UTF-8&serverTimezone=UTC
 	private final String USER = "root";
 	private final String PASS = "1234";
 
 	public RegisterMgr() {
 	 try{
 	   Class.forName(JDBC_DRIVER);
 	   }catch(Exception e){
 	      System.out.println("Error : JDBC 드라이버 로딩 실패");
 	   }
     }//MemberMgr()
 
    public Vector getMemberList() {
	   Connection conn = null;
	   Statement stmt = null;
       ResultSet rs = null;
       Vector vecList = new Vector();
       try {
          conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
          String strQuery = "select * from membertbl";
          stmt = conn.createStatement();
          rs = stmt.executeQuery(strQuery);
		  while (rs.next()) {
             RegisterBean regBean = new RegisterBean();
		 	 regBean.setMemberID (rs.getString("memberid"));
			 regBean.setPassword (rs.getString("password"));
 			 regBean.setName (rs.getString("name"));
 			 regBean.setEmail (rs.getString("email"));
             vecList.add(regBean);
          }
       } catch (Exception ex) {
          System.out.println("Exception" + ex);
       } finally {
          if(rs!=null)   try{rs.close();}  catch(SQLException e){}
		  if(stmt!=null) try{stmt.close();}catch(SQLException e){}
	      if(conn!=null) try{conn.close();}catch(SQLException e){}
       }
       return vecList;
    }
    public void insertMember(RegisterBean mem) {

 	   Connection conn = null;
 	   Statement stmt = null;
       ResultSet rs = null;
        try {
           conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
           stmt =  conn.createStatement();
           stmt.executeUpdate("insert into membertbl values ("+ mem.getMemberID() +", "+ mem.getPassword() + ", "+ 
                   mem.getName() + "," + mem.getEmail() + ")" );

        } catch (Exception ex) {
           System.out.println("Exception" + ex);
        } finally {
           if(rs!=null)   try{rs.close();}  catch(SQLException e){}
 		  if(stmt!=null) try{stmt.close();}catch(SQLException e){}
 	      if(conn!=null) try{conn.close();}catch(SQLException e){}
        }
        return ;
     }
 }