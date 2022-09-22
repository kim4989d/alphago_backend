<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>

	HTML
	<audio>
		요소 HTML 로 오디오 파일을 재생하려면 ,
		<audio>
			요소: 예

			<audio controls>
				<source src="horse.ogg" type="audio/ogg">
				<source src="horse.mp3" type="audio/mpeg">
				Your browser does not support the audio element.
			</audio>
			<br> HTML 오디오 - 구조 그controlsattribute는 재생, 일시정지, 볼륨 등의 오디오 컨트롤을
			추가합니다. 그
			<source>
			요소를 사용하여 대체 오디오를 지정할 수 있습니다.브라우저가 선택할 수 있는 파일입니다.브라우저는 처음 인식된 형식을
			사용합니다. 사이의 텍스트
			<audio>그리고.
			</audio>
			태그만 표시됩니다.그렇지 않은 브라우저에서는을 지원하다
			<audio>
				요소. HTML
				<오디오> 자동 재생 오디오 파일을 자동으로 시작하려면autoplay속성: <audio controls
					autoplay>
					<source src="horse.ogg" type="audio/ogg">
					<source src="horse.mp3" type="audio/mpeg">
					Your browser does not support the audio element.
				</audio> <br>

				메모: Chromium 브라우저는 지원하지 않습니다.대부분의 경우 자동 재생을 허용합니다.단, 음소거 자동 재생은 항상
				허용됩니다. 더하다muted끝나고 autoplay오디오 파일이 자동으로 재생되도록 하려면(음소거): <audio
					controls autoplay muted>
					<source src="horse.ogg" type="audio/ogg">
					<source src="horse.mp3" type="audio/mpeg">
					Your browser does not support the audio element.
				</audio> <br>
				<img src="common/img/htmlaudio.png" alt="" /> <br>


				<img src="common/img/htmlaudio2.png" alt="" />
</body>
</html>