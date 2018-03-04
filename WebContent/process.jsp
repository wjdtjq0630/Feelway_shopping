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
		String register_id = request.getParameter("id");
		String register_pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		
		//String[] register_arr = {id,pw,name,gender,email,phone,address};
		
		session.setAttribute("id", register_id);
		session.setAttribute("pw", register_pw);
		session.setAttribute("name", name);
		session.setAttribute("gender", gender);
		session.setAttribute("email", email);
		session.setAttribute("phone", phone);
		session.setAttribute("address", address);
		
		response.sendRedirect("index.html");
		
	
	%>
	
	
	

</body>
</html>