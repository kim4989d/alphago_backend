<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<!-- 	formmethod 속성
입력formmethodattribute는 폼 데이터를 액션 URL로 전송하기 위한 HTTP 방식을 정의합니다.

주의: 이 Atribute는 Method Atribute를 덮어씁니다.<form>요소.
그formmethodAtribute는 와 함께 동작합니다.입력 유형: submit 및 image.
폼 데이터는 URL 변수(http="get") 또는 HTTP 게시물로 보낼 수 있습니다.트랜잭션(transaction="post").
"get" 메서드에 대한 주의사항:
이 메서드는 이름/값 쌍의 URL에 양식 데이터를 추가합니다.
이 방법은 사용자가 즐겨찾기를 원하는 양식 제출에 유용합니다.결과
URL에 저장할 수 있는 데이터 양에는 제한이 있습니다(각각의 조건에 따라 다름).브라우저) 따라서 모든 폼데이터가 다음 중 하나가 될지는 확신할 수 없습니다.올바르게 전송되었다
중요한 정보를 전달하기 위해 "get" 방법을 사용하지 마십시오.기타 중요한 정보는 브라우저의 주소창에 표시됩니다.)
"포스트" 방법에 대한 주의사항:
이 메서드는 폼 데이터를 HTTP 포스트 트랜잭션으로 전송합니다.
"post" 메서드를 사용한 양식 제출은 북마크할 수 없습니다.
「포스트」방법은 「취득」보다 견고하고 안전하며, 「포스트」방법은크기 제한이 없다
 -->	
	
	<form action="/action_page.php" method="get">
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <label for="lname">Last name:</label>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="submit" value="Submit using GET">
  <input type="submit" formmethod="post" value="Submit using POST">
</form>
</body>
</html>