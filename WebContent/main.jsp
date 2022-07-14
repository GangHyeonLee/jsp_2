<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie ck[] = request.getCookies();
	String str = null;
	if(ck != null){
		for(Cookie c : ck){
			str = URLDecoder.decode(c.getValue(),"UTF-8");
		}
%>

	<%=str %>님 안녕하세요 <br>
	
	<form method="post" action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>

	
		
<%}else{ %>
	<h2>로그인 실패</h2>	
	<p><a href="loginForm.jsp"> 돌아가기</a>
	<% }
%>
</body>
</html>