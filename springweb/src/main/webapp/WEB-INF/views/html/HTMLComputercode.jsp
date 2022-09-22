<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<code>
x = 5;
y = 6;
z = x + y;
</code>
	
	<!-- 키보드 입력용 HTML <kbd>
HTML<kbd>요소가 사용됨키보드 입력을 정의합니다.내부 콘텐츠가 브라우저에 표시됩니다.기본 monospace 글꼴. -->
	<p>Save the document by pressing <kbd>Ctrl + S</kbd></p>
<!-- Save the document by pressing Ctrl + S -->



<!-- 프로그램 출력용 HTML <samp>
HTML<samp>요소는 에 익숙하다.컴퓨터 프로그램의 샘플 출력을 정의합니다.내부 내용은 다음 위치에 표시됩니다.브라우저의 기본 monospace 글꼴.
 -->
 
 
 <p>Message from my computer:</p>
<p><samp>File not found.<br>Press F1 to continue</samp></p>


<!-- 주의:<code>요소는 여분의 공백 및 줄 바꿈을 유지하지 않습니다.
이 문제를 해결하려면<code>내부의 요소<pre>요소:
 -->

<pre>
<code>
x = 5;
y = 6;
z = x + y;
</code>
</pre>

	<!-- HTML <var> 변수
HTML<var>요소가 사용됨프로그래밍 또는 수학 식에서 변수를 정의합니다.그내부 내용은 일반적으로 이탤릭체로 표시됩니다.
 -->
	<p>The area of a triangle is: 1/2 x <var>b</var> x <var>h</var>, where <var>b</var> is the base, and <var>h</var> is the vertical height.</p>



<!-- 그<kbd>요소의 정의키보드 입력
그<samp>요소의 정의컴퓨터 프로그램의 샘플 출력
그<code>요소는 컴퓨터 코드의 일부를 정의합니다.
그<var>요소는 프로그래밍 또는 수학식으로 변수를 정의한다
그<pre>요소의 정의미리 포맷된 텍스트
 -->
</body>
</html>