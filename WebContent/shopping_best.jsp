<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		   <meta charset="UTF-8">
   		 <link rel="stylesheet" href="shopping.css">
    		<title>best</title>
</head>
<%
request.setCharacterEncoding("UTF-8");

String id = (String)session.getAttribute("id");
String check = (String)session.getAttribute("check");
%>
<body onload="hello()">
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
                <li><a class="selected" href="shopping_best.jsp">BEST</a></li>
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
                <a href="top1.jsp"><img src="product/top1.PNG">
                    <br>
                    <h2>스톤아일랜드 맨투맨</h2>
                    <p>158,000won</p>
                </a>
            </li>
            <li class="list">
                <a href="bottom1.jsp"><img src="product/bottom1.PNG">
                    <br>
                    <h2>디스퀘어드<br>청바지</h2>
                    <p>268,000won</p>
                </a>
            </li>
            <li class="list">
                <a href="outer2.jsp"><img src="product/outer2.PNG">
                    <br>
                    <h2>나이키<br>롱패딩</h2>
                    <p>328,000won</p>
                </a>
            </li>
            <br>
            <li class="list listd">
                <a href="outer3.jsp"><img src="product/outer3.PNG">
                    <br>
                    <h2>샤넬<br>롱코트</h2>
                    <p>268,000won</p>
                </a>
            </li>
            <li class="list listd">
                <a href="outer4.jsp"><img src="product/outer4.PNG">
                    <br>
                    <h2>나이키<br>후드집업</h2>
                    <p>158,000won</p>
                </a>
            </li>
            <li class="list listd">
                <a href="top2.jsp"><img src="product/top2.PNG">
                    <br>
                    <h2>나이키<br>후드티</h2>
                    <p>78,000won</p>
                </a>
            </li>
            <li class="list listd">
                <a href="bottom2.jsp"><img src="product/bottom2.PNG">
                    <br>
                    <h2>디스퀘어드<br>트레이닝바지</h2>
                    <p>239,000won</p>
                </a>
            </li>
        </ul>
    </main>
    <footer>
        <div class="footer"> COPYRIGHT (C) FeelWay ALL RIGHTS RESERVED
            <br> developer: seob 30627115 </div>
    </footer>
</body>
</html>