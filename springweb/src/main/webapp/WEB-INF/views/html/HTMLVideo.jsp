<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>

	HTML
	<video>
		요소 HTML 로 비디오를 표시하려면 ,
		<video>
			요소

			<video width="320" height="240" controls>
				<source src="movie.mp4" type="video/mp4">
				<source src="movie.ogg" type="video/ogg">
				Your browser does not support the video tag.
			</video>

			구조 그controls속성은 재생, 일시 중지, 볼륨 등의 비디오 컨트롤을 추가합니다. 항상 포함시키는 것이
			좋습니다.width그리고.height특성.높이와 너비가 설정되지 않은 경우 페이지비디오가 로드되는 동안 깜박거릴 수
			있습니다. 그
			<source>
			요소를 사용하여 대체 비디오를 지정할 수 있습니다.브라우저가 선택할 수 있는 파일입니다.브라우저는 처음 인식된 형식을
			사용합니다. 사이의 텍스트
			<video>그리고.
			</video>
			태그만 표시됩니다.그렇지 않은 브라우저에서는을 지원하다
			<video>
				요소. HTML
				<비디오> 자동 재생 비디오를 자동으로 시작하려면autoplay속성: <video width="320"
					height="240" autoplay>
					<source src="movie.mp4" type="video/mp4">
					<source src="movie.ogg" type="video/ogg">
					Your browser does not support the video tag.
				</video> 메모: Chromium 브라우저는 지원하지 않습니다.대부분의 경우 자동 재생을 허용합니다.단, 음소거 자동 재생은 항상
				허용됩니다. 더하다muted끝나고 autoplay비디오 재생을 자동으로 시작하려면(음소 <video width="320"
					height="240" autoplay muted>
					<source src="movie.mp4" type="video/mp4">
					<source src="movie.ogg" type="video/ogg">
					Your browser does not support the video tag.
				</video>
				
		<img src="common/img/htmlvideo.png" alt="" />		
				<br>
				
				HTML 비디오 - 메서드, 속성 및 이벤트
HTML DOM 에서는, 의 메서드, 속성, 및 이벤트가 정의됩니다.<video>요소.

이것에 의해, 비디오의 로드, 재생, 일시정지, 및 기간과 볼륨을 설정할 수 있습니다.

또, 비디오의 재생 개시, 일시 정지등을 통지하는 DOM 이벤트도 있습니다.
				
			
		<img src="common/img/htmlvideo2.png" alt="" />	
				
				<br>
				<img src="common/img/htmlvideo3.png" alt="" />
</body>
</html>