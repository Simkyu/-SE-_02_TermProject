<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import= "term_se.*"%>

<% request.setCharacterEncoding("euc-kr"); %>

<% // �Ķ���� ���� ���� �κ�
Subject sbj = new Subject();


subject_Node sn = new subject_Node();


String result = "";
String id = request.getParameter("id");
	
		
		if(sbj.subject_list_del(id)){
			result = "���� ���������� �����Ǿ����ϴ�.";
		} else {
			result = "��ϵ��� ���� �м���ȣ�Դϴ�.";
		}

	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���ڵ� �߰�</title>
</head>
<body>
		<%= result %>
			
	<input type="button" id="button1" onclick="button1_click();" value="���ư���" ></br>


</body>

<script>
function button1_click() {
	 location.href = "Adm_Subject_del.jsp"; 
}
</script>
</body>
</html>	
		