<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.Login"%>
<%@ page import= "java.util.ArrayList"%>
<%@ page import="java.sql.*" %>

<% request.setCharacterEncoding("euc-kr"); %>

<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset=utf-8");

String id = new String(request.getParameter("id").getBytes("8859_1"), "UTF-8");
String pwd = new String(request.getParameter("pwd").getBytes("8859_1"), "UTF-8");



Login lg = new Login();
boolean k = lg.Std_login(id, pwd);
 	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>레코드 추가</title>
	
	
	<%if(k == true){
	pageContext.forward("admin_login.jsp");%>		
		
	 <%} else {%>
	
	 <script> alert("아이디와 비밀번호가 일치하지 않습니다!");
	 location.href = "std_login.jsp"; </script>
	 	
	 <%
	 }%>
	 
	 
</head>
<body>
</body>

<script>

function error() {
	 alert("아이디와 비밀번호가 일치하지 않습니다!");
	
}

</script>
</html>	
		