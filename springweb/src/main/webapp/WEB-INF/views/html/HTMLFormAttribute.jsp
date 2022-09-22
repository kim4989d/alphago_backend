<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	
<!-- 	액션 속성
그actionattribute는 폼이 전송될 때 수행할 액션을 정의합니다.
보통 폼 데이터는 사용자가 [Submit]버튼을 클릭하면 서버상의 파일로 송신됩니다.
다음 예제에서는 폼 데이터가 "action_page.php"라는 파일로 전송됩니다. 이 파일에는 폼 데이터를 처리하는 서버측 스크립트가 포함되어 있습니다.
 -->	
 
 <form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
</form>


<!-- 타깃 속성
그targetattribute는 행선지를 지정합니다.폼 송신 후에 수신된 응답을 표시합니다.
그targetAtribute는 다음 중 하나를 가질 수 있습니다.다음 값:
Value	Description
_blank	The response is displayed in a new window or tab
_self	The response is displayed in the current window
_parent	The response is displayed in the parent frame
_top	The response is displayed in the full body of the window
framename	The response is displayed in a named iframe
 -->
 
 
<!--  메서드 속성
그methodattribute는 HTTP를 지정합니다.폼 데이터를 제출할 때 사용하는 방법.
폼 데이터는 URL 변수로 송신할 수 있습니다.method="get")또는 HTTP 포스트 트랜잭션(와 함께)method="post").
폼 데이터를 송신할 때의 디폴트의 HTTP 방식은, GET 입니다.
 --> 
 
 <form action="/action_page.php" method="get">
 <!-- <form action="/action_page.php" method="post"> -->
 
 
<!--  GET 관련 주의사항:자동 완성 속성
그autocompleteattribute를 지정하면폼은 자동완성이 켜지거나 꺼져야 합니다.

자동 완성이 켜져 있으면 브라우저는 사용자가 이전에 입력한 값에 따라 자동으로 값을 완료합니다.
이름/값 쌍의 URL에 양식 데이터를 추가합니다.
GET을 사용하여 기밀 데이터를 전송하지 마십시오! (제출된 폼 데이터는 URL에 표시됩니다!)
URL 의 길이는 제한되어 있습니다(2048 문자).
사용자가 결과를 북마크하려는 양식 제출에 유용합니다.
GET은 Google의 쿼리 문자열과 같이 안전하지 않은 데이터에 적합합니다.

POST 시 주의사항:
HTTP 요청 본문 내에 폼 데이터를 추가합니다(제출된 파일).폼 데이터가 URL에 표시되지 않음)
POST 에는 사이즈 제한이 없기 때문에, 대량의 데이터를 송신할 수 있습니다.
POST가 포함된 양식 제출은 북마크할 수 없습니다.


자동 완성 속성
그autocompleteattribute를 지정하면폼은 자동완성이 켜지거나 꺼져야 합니다.

자동 완성이 켜져 있으면 브라우저는 사용자가 이전에 입력한 값에 따라 자동으로 값을 완료합니다.

 -->
 
 <form action="/action_page.php" autocomplete="on">
 
 <!-- [ No validate ]아트리뷰트
그novalidateattribute는 부울 속성입니다.
\존재하는 경우는, 송신시에 폼 데이터(입력)를 검증하지 않는 것을 지정합니다.
 --> 
 <form action="/action_page.php" novalidate>
 
 
 <br>
 <img src="common/img/htmlattrubte.png" alt="" />
 
 
  </body>
</html>