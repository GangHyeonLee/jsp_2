<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//실제로는 DB에서 가져와야하는 값
String id="isaac1119";
String pwd="1234";
String name="이강현";

if(id.equals(request.getParameter("id"))&&
	pwd.equals(request.getParameter("pwd"))){
	
	Cookie c = new Cookie("username", URLEncoder.encode(name,"UTF-8"));
	c.setMaxAge(30);
	
	response.addCookie(c);
	
/* 	response.addCookie(new Cookie("name", name)); */
	

%>
<h2> <%= name %>님 성공적으로 로그인 하셨습니다.</h2>
<p><a href="main.jsp"> 마이페이지</a></p>

<% 
}else{
	%>
	<h2>로그인에 실패했습니다.</h2>
	<p><a href="loginForm.jsp"> 다시 로그인하기.</a>
	
<% 
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>