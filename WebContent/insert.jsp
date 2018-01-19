<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.EmaillistVo" %>
<%@ page import="com.javaex.dao.EmaillistDao" %>
<% 
	request.setCharacterEncoding("utf-8");
	String lastName=request.getParameter("ln"); //폼에서 약속한 변수이름의 값을 받아옴.
	String firstName=request.getParameter("fn");
	String email=request.getParameter("email"); //자바에 값 던져주기 위한 작업

	//System.out.println(lastName);	
	//System.out.println(firstName);	
	//System.out.println(email);	//출력에서 출력되는 것을 볼 수 있음.(현재까지 오류 없다는 것임)

	//java의 insert()메소드와 연결하기 위한 작업
	//import를 다 써줘야 함, 드라이버 오류시 추가해주어야 함
	EmaillistVo vo=new EmaillistVo(1,lastName,firstName,email);
	
	EmaillistDao dao=new EmaillistDao();
	
	dao.insert(vo);
	
	response.sendRedirect("list.jsp");
%>	
	
	
	