<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="shopping.css">
    <title>스톤아일랜드 맨투맨</title>
</head>

<body>
    <header>
    <%
request.setCharacterEncoding("UTF-8");

String id = (String)session.getAttribute("id");
String check = (String)session.getAttribute("check");
%>
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
      <div class="item_img">
          <img src="product/top6.PNG" class="productimg">
          </div>
          <div class="item_info">
            <span><h2><span class="brandname">stone island</span><br>스톤아일랜드 맨투맨</h2></span>
              <span><b>352,000</b>원</span><br><hr>
              <span class="infofontsize"><p><b>추가 배송비</b><br> 제주도:3,000원,도서산간:5,000원</p>
              본 상품은 해외배송이 가능합니다.<hr><br><br>
              <b>옵션선택</b><br>
              <form class="" action="index.html" method="post">
              <select class="select_option" name="size">
                <option value="small">S</option>
                <option value="medium" selected>M</option>
                <option value="large">L</option>
              </select><br><br><br><br><br><br>
                <input type="button" class="buybutton" name="topocket" value="장바구니">
                <input type="button" class="buybutton" name="buy" value="구매하기">
                </form>
            </span>
          </div>
          <div class="item_detail">
            <div class="detail_button">
              상세설명
            </div><br><br><br>
            <img src="product/top6-detail.PNG">
            <img src="product/top6-detail2.PNG">
            <img src="product/top6-1.PNG">
            <img src="product/top6-2.PNG">
          </div>
    </main>
    <hr>
    <footer>
        <div class="footer"> COPYRIGHT (C) FeelWay ALL RIGHTS RESERVED
            <br> developer: seob 30627115 </div>
    </footer>
</body>

</html>