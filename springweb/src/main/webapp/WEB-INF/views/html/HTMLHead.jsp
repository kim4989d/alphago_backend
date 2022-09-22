<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<!-- 검색 엔진의 키워드를 정의합니다. -->
<meta name="keywords" content="HTML, CSS, JavaScript">

<!-- 웹 페이지에 대한 설명을 정의합니다. -->

<meta name="description" content="Free Web tutorials">



<!-- 	페이지의 작성자를 정의합니다. -->

<meta name="author" content="John Doe">



<!-- 30초마다 문서 새로 고침: -->

<meta http-equiv="refresh" content="30">


<!-- Setting the viewport to make your webs -->
ite
<!-- 모든 디바이스에 적합합니다. -->


<!-- 뷰포트 설정
뷰포트는 사용자가 웹 페이지에서 볼 수 있는 영역입니다.디바이스에 따라 다릅니다.
·휴대전화에서는 컴퓨터 화면보다 작아집니다.
다음 항목을 포함해야 합니다.<meta>모든 웹 페이지의 요소:

그러면 브라우저에 명령어가 표시됩니다.페이지 치수와 축소를 제어합니다.

그width=device-widthpart 는, 디바이스의 화면폭에 따르도록 페이지 폭을 설정합니다(단말기에 따라 다릅니다).

그initial-scale=1.0part는 브라우저에 의해 페이지가 처음 로드될 때의 초기 줌 레벨을 설정합니다.

다음으로 뷰포트 메타태그가 없는 웹 페이지와 뷰포트 메타태그가 있는 웹 페이지의 예를 나타냅니다.

 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="mystyle.css">
<style>
body {
	background-color: powderblue;
}

h1 {
	color: red;
}

p {
	color: blue;
}
</style>

<link rel="stylesheet" href="mystyle.css">

<script>
	function myFunction() {
		document.getElementById("demo").innerHTML = "Hello JavaScript!";
	}
</script>

<base href="https://www.w3schools.com/" target="_blank">
<img src="images/stickman.gif" width="24" height="39" alt="Stickman">
<a href="tags/tag_base.asp">HTML base Tag</a>
</head>
<body>




</body>
</html>




<!-- 그<head>요소는 메타데이터(데이터)의 컨테이너입니다.
데이터에 대해서)
그<head>요소를 사이에 배치하다<html>태그와<body>태그
그<title>요소가 필요합니다.
문서 제목을 정의합니다.
그<style>요소는 에 익숙하다.
단일 문서에 대한 스타일 정보 정의
그<link>
태그는 외부 스타일 시트에 링크하는 데 가장 많이 사용됩니다.
그<meta>요소는 일반적으로
문자 세트, 페이지 설명, 키워드, 작성자 지정에 사용됩니다.
문서 및 뷰포트 설정
그<script>요소는 클라이언트 측 JavaScript를 정의하기 위해 사용됩니다.
그<base>element는,
페이지의 모든 상대 URL에 대한 기본 URL 및/또는 대상
 -->