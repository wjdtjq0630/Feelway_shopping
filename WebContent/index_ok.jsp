<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="shopping.css">
	 <script src="jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="shopping.js"></script>
    <title>Feel Way</title>
</head>
<body onload="hello()">
<%
	request.setCharacterEncoding("UTF-8");

	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	String name = (String)session.getAttribute("name");
	String gender = (String)session.getAttribute("gender");
	String email = (String)session.getAttribute("email");
	String phone = (String)session.getAttribute("phone");
	String address = (String)session.getAttribute("address");
	
	String[] register_arr = {id,pw,name,gender,email,phone,address};
	
%>

<header>
        <div class="header"><a href="index_ok.jsp" class="logo"><img src="bgi/dasBrot/logo.png" alt="logo"></a>
            <nav class="nav">
              <ul>
                  <li><a href="shopping_best.jsp">BEST</a></li>
                  <li><a href="shopping_top.jsp">TOP</a></li>
                  <li><a href="shopping_bottom.jsp">BOTTOM</a></li>
                  <li><a href="shopping_outer.jsp">OUTER</a></li>
                  <li class="brandbar">
                  <a class="last">BRAND</a><br>
                  <ul class="menubar">
                    <li><a href="brand_mk.jsp">moose knuckles</a></li>
                    <li><a href="brand_sti.jsp">stome island</a></li>
                    <li><a href="brand_dsq.jsp">dsquared2</a></li>
                    <li><a href="brand_cha.jsp">channel</a></li>
                    <li><a href="brand_nike.jsp">nike</a></li>
                  </ul></li>
              </ul>
            </nav>
            	<%
            		out.println("<b><a href='mypage.jsp' class='loginbutton'>");
            	%>
            	 <%=id %>
             <%
            		out.println("님 </a></b>");
             		out.println("<b> <a href='logout.jsp' class='joinbutton'>로그아웃</a></b");
            	%>
           
            </div>
    </header>
    <div class="slideshow">
        <img src="bgi/dasBrot/main_STI2.jpg" alt="main" class="mainimg">
       <img src="bgi/dasBrot/main.jpeg" alt="main" class="mainimg alt">
       <img src="bgi/dasBrot/main_MK.PNG" alt="main" class="mainimg alt">
		<img src="bgi/dasBrot/main_STI.PNG" alt="main" class="mainimg alt">      
    </div>
    <div class="footer"> COPYRIGHT (C) FeelWay ALL RIGHTS RESERVED
        <br> developer: seob 30627115 </div>

</body>
</html>