<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 헤더 -->
<%@ include file="./header.jsp" %> 

<!-- 바디 -->
<div id="slideShow">
	<ul class="slides">
		<li><img src="images/mainpage/main1.PNG" alt=""></li>
		<li><img src="images/mainpage/main2.PNG" alt=""></li>
		<li><img src="images/mainpage/main3.PNG" alt=""></li>
		<li><img src="images/mainpage/main4.PNG" alt=""></li>
		<li><img src="images/mainpage/main5.PNG" alt=""></li>
		<li><img src="images/mainpage/main6.PNG" alt=""></li>
		<li><img src="images/mainpage/main7.PNG" alt=""></li>
		<li><img src="images/mainpage/main8.PNG" alt=""></li>
		<li><img src="images/mainpage/main9.PNG" alt=""></li>
	</ul>
	<p class="controller">
		<span class="prev">&lang;</span> <span class="next">&rang;</span>
	</p>
</div>
<!-- 푸터 -->
<%@ include file="./footer.jsp" %>  

<style>
	/* 초기화 */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

li {
	list-style-type: none;
}

/* 보여줄 구간의 높이와 넓이 설정 */
#slideShow {
	width: 1600px;
	height: 800px;
	position: relative;
	margin: 50px auto;
	overflow: hidden;
	/*리스트 형식으로 이미지를 일렬로 정렬할 것이기 때문에, 500px 밖으로 튀어 나간 이미지들은 hidden으로 숨겨줘야됨*/
}

.slides {
	position: absolute;
	left: 0;
	top: 0;
	width: 2500px;
	/* 슬라이드할 사진과 마진 총 넓이 */
	transition: left 0.5s ease-out;
	/*ease-out: 처음에는 느렸다가 점점 빨라짐*/
}

/* 첫 번째 슬라이드 가운데에 정렬하기위해 첫번째 슬라이드만 margin-left조정 */
.slides li:first-child {
	margin-left: 47px;
}

/* 슬라이드들 옆으로 정렬 */
.slides li:not(:last-child) {
	float: left;
	margin-right: 30px;
}

.slides li {
	float: left;
}

.controller span {
	position: absolute;
	background-color: transparent;
	color: black;
	text-align: center;
	border-radius: 50%;
	padding: 10px 20px;
	top: 50%;
	font-size: 1.3em;
	cursor: pointer;
}

/* 이전, 다음 화살표에 마우스 커서가 올라가 있을때 */
.controller span {
	background-color: rgba(128, 128, 128, 0.11);
}

.controller span:hover {
	background-color: rgba(46, 111, 251, 0.11);
}

.prev {
	left: 10px;
}

.next {
	right: 10px;
}
</style>

<script>
	const slides = document.querySelector('.slides'); //전체 슬라이드 컨테이너 
	const slideImg = document.querySelectorAll('.slides li'); //모든 슬라이드들 
	let currentIdx = 0; //현재 슬라이드 index 
	const slideCount = slideImg.length; // 슬라이드 개수 
	const prev = document.querySelector('.prev'); //이전 버튼 
	const next = document.querySelector('.next'); //다음 버튼 
	// const slideWidth = 300; //한개의 슬라이드 넓이 
	// const slideMargin = 100; //슬라이드간의 margin 값 

	//전체 슬라이드 컨테이너 넓이 설정 
	// slides.style.width = (slideWidth + slideMargin) * slideCount + 'px';
	slides.style.width = '10000px';

	function moveSlide(num) {
		slides.style.left = -num * 400 + 'px';
		currentIdx = num;
	}

	prev.addEventListener('click', function () {
		/*첫 번째 슬라이드로 표시 됐을때는 
		이전 버튼 눌러도 아무런 반응 없게 하기 위해 
		currentIdx !==0일때만 moveSlide 함수 불러옴 */
		if (currentIdx !== 0) moveSlide(currentIdx - 1);
	});

	next.addEventListener('click', function () {
		/* 마지막 슬라이드로 표시 됐을때는 
		다음 버튼 눌러도 아무런 반응 없게 하기 위해 
		currentIdx !==slideCount - 1 일때만 
		moveSlide 함수 불러옴 */
		if (currentIdx !== slideCount - 1) {
			moveSlide(currentIdx + 1);
		}
	});
</script>
