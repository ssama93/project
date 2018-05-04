<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 디비연동 jdbc 설치
// 1단계 드라이버 로더
// 2단계 디비연결
// 3단계 sql 객체 생셩 member 테이블 모든정보 가져오기
// 4단계 rs <= 실행 결과 저장
// 5단계 rs 첫행 이동 데이터 있으면
//         자바빈 객체 생성
//         자바빈 id 변수 <= 첫행 id 열데이터 가져와서 저장
//         배열변수 한칸 저장<= 한사람의 정보 (자바빈)
   Class.forName("com.mysql.jdbc.Driver");
   String dbUrl = "jdbc:mysql://localhost:3306/jspdb2";
   String dbUser = "jspid";
   String dbPass = "jsppass";
   Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
   
   String sql="select * from member"; 
   PreparedStatement ps = con.prepareStatement(sql);
   ResultSet rs = ps.executeQuery();

   JSONArray arr = new JSONArray();
   
   while(rs.next()){
         JSONObject obj = new JSONObject();
         obj.put("id", rs.getString("id"));
         obj.put("pass", rs.getString("pass"));
         obj.put("name", rs.getString("name"));
         // 배열 한칸에 저장
         arr.add(obj);
   }

%>
<%=arr %>

