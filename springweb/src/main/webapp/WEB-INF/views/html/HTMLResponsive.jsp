<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
<!-- 	응답 이미지
응답성 이미지는 브라우저 크기에 따라 적절하게 확장 가능한 이미지입니다.

너비 속성 사용
CSS가width속성이 100%로 설정되고 이미지가 반응하여 확장됩니다.위아래:
 -->	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
	
	<img src="img_girl.jpg" style="width:100%;">
	
	
<!-- 	max-width 속성 사용
이 경우,max-width속성이 100%로 설정되며, 필요한 경우 이미지는 축소되지만 원래 크기보다 커지도록 축소되지는 않습니다
 -->	
	
	
	<img
src="img_girl.jpg" style="max-width:100%;height:auto;">
	
	
	
	<picture>
  <source srcset="img_smallflower.jpg" media="(max-width: 600px)">
  <source srcset="img_flowers.jpg" media="(max-width: 1500px)">
  <source srcset="flowers.jpg">
  <img src="img_smallflower.jpg" alt="Flowers">
</picture>
	
	
<!-- 	응답 텍스트 크기
텍스트 크기는 "vw" 단위로 설정할 수 있습니다. 즉, "viewport width"를 의미합니다.
이렇게 하면 텍스트 크기가 브라우저 창의 크기를 따릅니다.
 -->	<h1 style="font-size:10vw">Hello World</h1>

<!-- 미디어 쿼리
텍스트 및 이미지 크기 조정 외에도 미디어 쿼리를 사용하는 것이 일반적입니다.응답성 있는 웹 페이지에 있습니다.

미디어 쿼리를 사용하여 브라우저별로 완전히 다른 스타일을 정의할 수 있습니다.사이즈를 지정합니다.

예: 브라우저 창의 크기를 조정하여 아래 세 가지 div 요소가 표시되도록 합니다.큰 화면에서는 가로로, 작은 화면에서는 세로 방향으로 적층합니다.
 -->
 
 
 
 
</body>
</html>