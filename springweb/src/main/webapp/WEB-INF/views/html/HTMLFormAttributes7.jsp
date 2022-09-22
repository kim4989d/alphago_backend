<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	
	
<!-- 	novalidate 속성
그novalidateattribute는<form>기여하다.
novalidate가 있는 경우 전송 시 모든 폼 데이터를 검증하지 않도록 지정합니
 -->
 
 
 	<form action="/action_page.php" novalidate>
  <label for="email">Enter your email:</label>
  <input type="email" id="email" name="email"><br><br>
  <input type="submit" value="Submit">
</form>
	
</body>
</html>