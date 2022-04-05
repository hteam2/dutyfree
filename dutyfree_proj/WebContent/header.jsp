<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>현대백화점면세점</title>
<!-- <link href="css/shopping.css" rel="stylesheet" /> -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    
  </head>

  <body>
    <div>
      <!-- 상단 메뉴바  -->
      <nav id="top_bar">
        <ul>
          <!-- <li><a href="" class="btn_gnb"><img id="nav_drawer" src="./images/drawer.png"></a></li> -->
          <li>
          <a href="${root}/index.jsp">
            <img
              id="mainLogo"
              src="https://cdn.hddfs.com/files/dm/20220211/d6f7beb8_202202111122135690.png?RS=192X40"
              alt="HYUNDAI DEPARTMENT SHOP - DUTY FREE"
            />
            </a>
          </li>
          <li>
          <div id="searchBox">
            <form action="" method="GET">
              <input
                type="search"
                class="text_search"
                placeholder=""
                name="searchTerm"
                id="basicSearchTerm"
              />
              <button class="btn_search" onclick=""><i class="fa fa-search"></i></button>
            </form>
            </div>
          </li>
          <li><a href="${root}/main?act=login">로그인</a></li>
          <li><a href="#">회원가입</a></li>
          <li><a href="#">마이페이지</a></li>
          <li><a href="#">장바구니</a></li>
          <li><a href="#">Q/A게시판</a></li>
        </ul>
      </nav>
    </div>
    <% %>
  </body>
  
  <style>
  	/* header design */
	#top_bar{
		padding-top: 10px;
		margin:0px auto;	
		text-align:center;
	}
	
	#top_bar ul li{
		display: inline-block;
		vertical-align:middle;
		text-align:center;
	}
	
	#top_bar ul li a{
		text-decoration: none;
		color: #5c6677;
		font-weight: bold;
		margin : 10px;
		padding-top:20px;
	}
	
	#basicSearchTerm{
		border: none;
		width:360px;
		margin: 0px;
		height: 40px;	
		background:#f2f4f7;
	
	}
	#basicSearchTerm:focus{
		outline:none;
		background:#f2f4f7;
	
	}
	#btn_search{
		border: none;
		background:#f2f4f7;
	}
	#searchBox{
		width: 450px;
	    border-radius: 20px;
	    border: 1px solid #bbb;
	    margin: 10px 200px 10px 30px;
	    padding: 0px 12px;
	    background:#f2f4f7;
	    
	}
	
	.btn_search{
		background:#f2f4f7;	
		border:none;
		height: 40px;
	}
	
	/* footer design */
	#footer {
		background: #1b1e23;
		color: #5c6677;
		width: 100%;
	    padding: 50px 0 80px 100px;
	    margin:0 auto;
		display:block;
	}
  </style>
</html>
