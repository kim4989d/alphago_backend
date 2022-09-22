<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	
	
<!-- 	미디어 쿼리
텍스트 및 이미지 크기 조정 외에도 미디어 쿼리를 사용하는 것이 일반적입니다.응답성 있는 웹 페이지에 있습니다.

미디어 쿼리를 사용하여 브라우저별로 완전히 다른 스타일을 정의할 수 있습니다.사이즈를 지정합니다.

예: 브라우저 창의 크기를 조정하여 아래 세 가지 div 요소가 표시되도록 합니다.큰 화면에서는 가로로, 작은 화면에서는 세로 방향으로 적층합니다.
 -->	
	<style>
.left, .right {
  float: left;
  width: 20%; /* The width is 20%, by default */
}

.main {
  float: left;
  width: 60%; /* The width is 60%, by default */
}

/* Use a media query to add a breakpoint at 800px: */
@media screen and (max-width: 800px) {
  .left, .main, .right {
    width: 100%; /* The width is 100%, when the viewport is 800px or smaller */
  }
}
</style>
</body>
</html>