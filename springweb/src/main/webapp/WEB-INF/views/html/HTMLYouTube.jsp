<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<!-- 	비디오 포맷에 어려움을 겪고 계십니까?
비디오를 다른 형식으로 변환하는 것은 어렵고 시간이 많이 걸릴 수 있습니다.
보다 쉬운 해결책은 YouTube가 웹 페이지에서 동영상을 재생하도록 하는 것입니다.
YouTube 비디오 ID
YouTube는 비디오를 저장(또는 재생)할 때 ID(tgbNymZ7vqY 등)를 표시합니다.
이 ID를 사용하여 HTML 코드로 동영상을 참조할 수 있습니다.
HTML로 유튜브 비디오 재생
Web 페이지에서 비디오를 재생하려면 , 다음의 순서에 따릅니다.
YouTube에 동영상 업로드
비디오 ID를 메모합니다.
의 정의<iframe>웹 페이지 요소
렛츠src비디오 URL 속성 포인트
를 사용합니다.width그리고. height플레이어의 치수를 지정하는 속성
URL에 다른 파라미터를 추가합니다(아래 참조).
예 -->
	
	
	<iframe width="420" height="315"
src="https://www.youtube.com/embed/tgbNymZ7vqY">
</iframe>

<br>
<!-- YouTube 자동 재생 + 음소거
유저가 액세스 했을 때에, 비디오의 재생을 자동적으로 개시할 수 있습니다.페이지, 추가에 의한autoplay=1YouTube URL로 이동합니다.그러나 자동으로 동영상을 시작하는 것은 방문객들에게 성가신 일입니다!
메모: Chromium 브라우저는 지원하지 않습니다.대부분의 경우 자동 재생을 허용합니다.단, 음소거 자동 재생은 항상 허용됩니다.
더하다mute=1끝나고 autoplay=1비디오 재생을 자동으로 시작합니다(음소거).
	YouTube - 자동 재생 + 음소거
 --><iframe width="420" height="315"
src="https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1&mute=1">
</iframe>
<!-- 유튜브 재생 목록
재생할 비디오의 쉼표로 구분된 목록(원래 URL과 함께).
유튜브 루프
더하다loop=1비디오를 영원히 반복할 수 있습니다.
값 0(기본값):비디오는 1회만 재생됩니다.
값 1: 비디오는 루프합니다(영원히)
 -->


<iframe width="420" height="315"
src="https://www.youtube.com/embed/tgbNymZ7vqY?playlist=tgbNymZ7vqY&loop=1">
</iframe>

<!-- 유튜브 컨트롤
더하다controls=0에 컨트롤을 표시하지 않음비디오 플레이어
값 0: 플레이어 컨트롤이 표시되지 않습니다.
값 1(디폴트):플레이어가 디스플레이를 제어합니다.
 -->
 <br>
 <iframe width="420" height="315"
src="https://www.youtube.com/embed/tgbNymZ7vqY?controls=0">
</iframe>
</body>
</html>