<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="shopping.css">
    <script type="text/javascript" src="shopping.js"></script>
    <title>무스너클</title>
</head>
<%
request.setCharacterEncoding("UTF-8");

String id = (String)session.getAttribute("id");
String check = (String)session.getAttribute("check");
%>
<body>
    <header>
        <div class="header">
            <%
        	if(check==null) // 로그인 x 
        	{
        		out.println("<a href=\"index.html\" class=\"logo\"><img src=\"bgi/dasBrot/logo.png\" alt=\"logo\"></a>");
        	}else{
        		out.println("<a href=\"index_ok.jsp\" class=\"logo\"><img src=\"bgi/dasBrot/logo.png\" alt=\"logo\"></a>");
        	}
        %>
            <nav class="nav">
              <ul>
                  <li><a href="shopping_best.jsp">BEST</a></li>
                  <li><a href="shopping_top.jsp">TOP</a></li>
                  <li><a href="shopping_bottom.jsp">BOTTOM</a></li>
                  <li><a href="shopping_outer.jsp">OUTER</a></li>
                  <li class="brandbar">
                  <a class="last selected">BRAND</a><br>
                  <ul class="menubar">
                    <li><a class="selected" href="brand_mk.jsp">moose knuckles</a></li>
                    <li><a href="brand_sti.jsp">stome island</a></li>
                    <li><a href="brand_dsq.jsp">dsquared2</a></li>
                    <li><a href="brand_cha.jsp">channel</a></li>
                    <li><a href="brand_nike.jsp">nike</a></li>
                  </ul></li>
              </ul>
            </nav>
          	<%
          		if(check==null){
          			out.println("<a href='shopping_login.html' class='loginbutton'>로그인</a> ");
          			out.println("<a href='shopping_join.html' class='joinbutton'>회원가입</a> ");
          		}
          		else{
          			
                	
            		out.println("<b><a href='mypage.jsp' class='loginbutton'>");
          
            	
          		
          	%>
          	<%=id %>
          	<%
          	out.println("님 </a></b>");
          	out.println("<b> <a href='logout.jsp' class='joinbutton'>로그아웃</a></b");
          		}
          	%>
            </div>
    </header>
    <main>
      <ul class="product">
          <li class="list">
              <a href="outer1.jsp"><img src="product/outer1.PNG">
                  <br>
                  <h2>무스너클<br>패딩자켓</h2>
                  <p>438,000won</p>
              </a>
          </li>
          <li class="list">
            <a href="top5.jsp"><img src="product/top5.PNG">
                <br>
                <h2>무스너클<br>맨투맨</h2>
                <p>643,000won</p>
            </a>
          </li>
          <li class="list">
            <a href="top8.jsp"><img src="product/top8.PNG">
                <br>
                <h2>무스너클<br>맨투맨</h2>
                <p>438,000won</p>
            </a>
          </li>
          <li class="list">
            <a href="outer5.jsp"><img src="product/outer5.png">
                <br>
                <h2>무스너클<br>후드집업</h2>
                <p>395,000won</p>
            </a>
          </li>
      </ul>
    </main>
    <div class="footer"> COPYRIGHT (C) FeelWay ALL RIGHTS RESERVED
        <br> developer: seob 30627115 </div>
</body>
</html>