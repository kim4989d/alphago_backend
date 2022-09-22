<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	
	
<!-- 	formnovalidate 속성
입력formnovalidateattribute 지정<input> 요소는 송신시에 검증되지 않습니다.
주의: 이 애트리뷰트는 novalidate 애트리뷰트를 덮어씁니다.<form> 요소.
그formnovalidateAtribute는 와 함께 동작합니다.다음 입력 유형: submit.
 -->	
	
	<form action="/action_page.php">
  <label for="email">Enter your email:</label>
  <input type="email" id="email" name="email"><br><br>
  <input type="submit" value="Submit">
  <input type="submit" formnovalidate="formnovalidate"
  value="Submit without validation">
</form>
	
</body>
</html>