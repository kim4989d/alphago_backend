<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<!-- 폼액션 속성
입력formactionattribute는 의 URL을 지정합니다.양식을 제출할 때 입력을 처리할 파일입니다.
주의: 이 Atribute는 다음 Atribute를 덮어씁니다. action의 속성<form>요소.
\그formactionAtribute는 와 함께 동작합니다.입력 유형: submit 및 image.	
 -->	
	<form action="/action_page.php">
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <label for="lname">Last name:</label>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="submit" value="Submit">
  <input type="submit" formaction="/action_page2.php" value="Submit as Admin">
</form>
	
	
</body>
</html>