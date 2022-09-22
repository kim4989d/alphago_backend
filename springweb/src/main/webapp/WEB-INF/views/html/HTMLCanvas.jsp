HTML
<canvas>요소는 웹 페이지에 그래픽을 그리는 데 사용됩니다.

왼쪽 그래픽은 다음과 같이 생성됩니다.<canvas>4개입니다.요소: 빨간색 직사각형, 그라데이션 직사각형,다색 직사각형과 다색 텍스트입니다


HTML 캔버스가 뭐죠?
HTML<canvas>요소는 JavaScript를 통해 즉시 그래픽을 그리는 데 사용됩니다.

그<canvas>요소는 그래픽을 위한 컨테이너일 뿐입니다.를 사용해야 합니다.실제로 그래픽을 그리기 위한 JavaScript.

캔버스에는 경로, 상자, 원, 텍스트 및 이미지 추가를 위한 여러 가지 방법이 있습니다.



<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	
	
	
<!-- 	캔버스 예시
캔버스는 HTML 페이지의 직사각형 영역입니다.기본적으로 캔버스에는 테두리와 내용이 없습니다.
마크업은 다음과 같습니다
주의: 항상 다음을 지정합니다.id속성(스크립트에서 참조),및 awidth그리고.height속성을 지정하여 캔버스의 크기를 정의합니다.테두리를 추가하려면style기여하
 -->
<canvas id="myCanvas" width="200" height="100"></canvas>
<br>


<canvas id="myCanvas" width="200" height="100" style="border:1px solid #000000;">
</canvas>
</body>
</html>