<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>


	폼 속성 입력formattribute는 형식을 지정합니다.그
	<input>요소가 속해 있습니다. 이 애트리뷰트의 값은
	<폼>의 id 애트리뷰트와 같아야 합니다.그것이 속한 요소.

	<form action="/action_page.php" id="form1">
		<label for="fname">First name:</label> <input type="text" id="fname"
			name="fname"><br>
		<br> <input type="submit" value="Submit">
	</form>

	<label for="lname">Last name:</label> <input type="text" id="lname"
		name="lname" form="form1">
		
		
		
</body>
</html>