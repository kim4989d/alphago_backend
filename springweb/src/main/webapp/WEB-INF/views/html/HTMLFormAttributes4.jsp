<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<!-- 	form target 속성
입력formtargetattribute는 이름 또는 키워드를 지정합니다.폼 송신 후에 수신한 응답을 표시합니다.
주의: 이 Atribute는 의 타겟 Atribute를 덮어씁니다.<form>요소.
그formtargetAtribute는 와 함께 동작합니다.입력 유형: submit 및 image.
 -->	
	
	
	<form action="/action_page.php">
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <label for="lname">Last name:</label>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="submit" value="Submit">
  <input type="submit" formtarget="_blank" value="Submit to a new window/tab">
</form>
</body>
</html>