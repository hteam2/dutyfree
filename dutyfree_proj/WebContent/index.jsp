<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 헤더 -->
<%@ include file="./header.jsp" %> 

<!-- 바디 -->

<!-- 푸터 -->
<%@ include file="./footer.jsp" %>  

<style>
	.keyvisual-swiper .text1 p,
	.keyvisual-swiper .text2 p {
		font-weight: bold;
		font-size: 46px;
		line-height: 60px;
		font-weight: 600;
		text-shadow: 0 4px 10px rgb(0 0 0 / 50%);
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
	}

	.keyvisual-swiper .text1 {
		position: absolute;
		top: 60px;
		right: 120px;
		left: 300px;
		color: #fff;
	}

	.keyvisual-swiper .text2 {
		position: absolute;
		top: 60px;
		right: 120px;
		left: 1000px;
		color: #fff;
	}

	.swiper-wrapper img {
		width: 658px;
		height: 658px;
		max-width: 100%;
		margin-right: 1%;
	}

	.swiper-wrapper {
		margin-left: 13%;
	}
</style>
