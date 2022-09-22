<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<form>
  <label for="fname">First name:</label><br>
  <input type="text" id="f이름.
" name="fname"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname">
</form>

<!-- <label> 요소
의 사용에 주의해 주십시오.<라벨>의 요소를 참조해 주세요.
그<라벨>태그는 많은 사람들을 위한 라벨을 정의합니다.폼 요소
\그<라벨>요소는 에 도움이 됩니다.화면표시 사용자는 화면표시자가 라벨을 큰 소리로 읽어내기 때문에사용자는 입력 요소에 초점을 맞춥니다.
그
유형	묘사
<입력 타입="텍스트">	한 줄 텍스트 입력 필드를 표시합니다.
<입력 타입="무선">	옵션 버튼을 표시합니다(다양한 옵션 중 하나를 선택하기 위해).
<입력 타입="put">	체크박스를 표시합니다(다양한 선택 항목 중 0개 이상을 선택하는 경우).
<입력 타입="put">	송신 버튼을 표시합니다(폼을 송신하기 위해서).
<입력 타입="버튼">	클릭 가능한 버튼을 표시합니다.<라벨>또, 유저에게 있어서도 도움이 됩니다.매우 작은 영역(옵션 버튼이나 확인란 등)을 클릭하기 어렵다- 사용자가 이 텍스트 내의 텍스트를 클릭하면<라벨>요소, 전환됩니다.라디오 버튼/버튼
그위해서의 속성<라벨>태그는 해야 한다에 필적하다아이디의 속성<입력> 요소를 결합합니다.
 -->
 <label for="fname">First name:</label><br>
  <input type="text" id="f이름.
" name="fname"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname">


<!-- 라디오 버튼
그<input type="radio">에 옵션버튼을 정의합니다.
사용자는 라디오 버튼을 사용하여 제한된 수의 선택 항목 중 하나를 선택할 수 있
 -->
 
 
   <input type="radio" id="html" name="fav_language" value="HTML">
  <label for="html">HTML</label><br>
  <input type="radio" id="css" name="fav_language" value="CSS">
  <label for="css">CSS</label><br>
  <input type="radio" id="javascript" name="fav_language" value="JavaScript">
  <label for="javascript">JavaScript </label>


<!-- 체크 박스
그<input type="checkbox">체크박스를 정의합니다.
이 확인란을 사용하면 사용자가 제한된 수의 선택 항목 중 ZERO 또는 MORE 옵션을 선택할 수없이 선택할 수 있습니다.
 -->
 
 
   <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
  <label for="vehicle1"> I have a bike</label><br>
  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
  <label for="vehicle2"> I have a car</label><br>
  <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
  <label for="vehicle3"> I have a boat</label>
  
  
  
<!-- [ Submit ]단추
그<input type="submit">에, 폼 데이터를 폼에 송신하기 위한 버튼을 정의합니다.
폼 핸들러는 일반적으로 서버상의 파일에 처리를 위한 스크립트가 포함되어 있습니다.데이터를 입력합니다.
폼 핸들러는 폼의action 기여하다.
 -->  
   <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
  
  
<!--   <input>의 이름 속성
각 입력 필드에는 다음 값이 필요합니다.name송신되는 어트리뷰트
이 경우,name속성이 생략되어 입력 필드 값이 전혀 전송되지 않습니다.
 -->  <label for="fname">First name:</label><br>
  <input type="text" id="fname" value="John"><br><br>
  <input type="submit" value="Submit">
  
  
  
  
  
</body>
</html>