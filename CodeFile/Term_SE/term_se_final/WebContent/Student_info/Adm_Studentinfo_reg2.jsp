<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import= "term_se.*"%>
<%@ page import= "java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>

</head>

<% request.setCharacterEncoding("euc-kr"); %>

<% // 파라미터 값을 얻어내는 부분

	Student_information si = new Student_information();


	
	String major = request.getParameter("major");
	String priv = request.getParameter("priv");
	String ent = request.getParameter("ent");
	
	String id = si.std_id_assign(priv, major, ent);
	%>
	
<body>
	<h2> 학적 등록 </h2>
		<form method="post" action="Adm_Studentinfo_reg_pro.jsp">
		
		학번 : <input type="text" name="id" maxlength="20" value = "<%=id%>" disabled required><br/>
		이름 : <input type="text" name="name" maxlength="40" required><br/>
		전공 : <input type="text" name="major" maxlength="20" value = "<%=major%>" required><br/>
		이미지 : <input type="text" name="image" maxlength="20" required><br/>
		전화 번호 : <input type="text" name="phone" maxlength="20" required><br/>
		주민등록 번호 : <input type="text" name="priv" maxlength="20" value = "<%=priv%>" required><br/>
		주소 : <input type="text" name="addr" maxlength="20" required><br/>
		입학 년도 : <input type="text" name="ent" maxlength="10" value = "<%=ent%>" required><br/>
		<input type="submit" value="입력완료">
</body>
<input type="button" id="button1" onclick="button1_click();" value="돌아가기" ></br>

<script>
function button1_click() {
	 location.href = "Adm_Studentinfo_reg1.jsp"; 
}
</script>
</html>