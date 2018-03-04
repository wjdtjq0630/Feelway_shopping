<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

String session_id = (String)session.getAttribute("id"); // 회원가입 아이디 비밀번호 
String session_pw = (String)session.getAttribute("pw");

String user_id = request.getParameter("id"); // 로그인을 시도한 아이디 비밀번호
String user_pw = request.getParameter("pw");

	if(user_id.equals(session_id) && user_pw.equals(session_pw)){
		session.setAttribute("check", "1");
		
		response.sendRedirect("index_ok.jsp");
	}
	else{
		response.sendRedirect("login_error_not.html");
	}
	
	/*
	if(!(session_id.equals(user_id) || session_id.equals(user_pw))) // 아이디와 비밀번호가 일치하지않음
	{
		response.sendRedirect("login_error_not.html");
	}
	if(user_id.equals("") || user_pw.equals("")) // 공백에 대한 예외처리
	{
		response.sendRedirect("login_error_null.html");
	}
	

	*/
%>

</body>
</html>