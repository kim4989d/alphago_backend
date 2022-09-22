<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	
<!-- 	양식 속성
입력formenctypeattribute는 제출 시 폼 데이터를 인코딩하는 방법을 지정합니다(method="post"인 폼의 경우에만 해당).
참고: 이 속성은 다음 항목의 enctype 속성을 재정의합니다.<form>요소.
그formenctypeAtribute는 와 함께 동작합니다.입력 유형: submit 및 image.
 -->	
	<form action="/action_page_binary.asp" method="post">
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <input type="submit" value="Submit">
  <input type="submit" formenctype="multipart/form-data"
  value="Submit as Multipart/form-data">
</form>
</body>
</html>