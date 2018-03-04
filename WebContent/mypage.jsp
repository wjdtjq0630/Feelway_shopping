<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="shopping.css">
</head>
<body>
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
	String check = (String)session.getAttribute("check");
	
	%>
	    <header>
        <div class="header">
         <a href="index_ok.jsp" class="logo">
         	<img src="bgi/dasBrot/logo.png" alt="logo">
         	</a>
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
      <!-- 마이페이지 컨텐츠 표시 -->
      <!-- 로그인 이후 우측 상단에 000님 누르면 shopping_mypage.html로 이동할 수 있도록 링크 표시 -->
      		<div align="center" class="mypage" >
      		
			<h2>나의 정보 </h2>
			<h3> <%= id  %> 님의 정보입니다.   </h3>
			<h3>아이디 : <%=id %> </h3>
			<h3>이름 : <%=name %> </h3>
			<h3>성별 : <%=gender %> </h3>
			<h3>이메일 : <%=email %> </h3>
			<h3>핸드폰번호 : <%=phone %> </h3>
			<h3>주소 : <%=address %> </h3>
			 
		
		</div>
      
    </main>
	

		<!--  

-->
</body>
</html>