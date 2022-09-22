<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>
	<form action="/test.jsp">
		<label for="fname">First name:</label><br> <input type="text"
			id="fname" name="fname"><br> <label for="lname">Last
			name:</label><br> <input type="text" id="lname" name="lname">
		<!-- 입력 타입 패스워드 -->
		<input type="password">는 패스워드 필드를 정의합니다. <label for="username">Username:</label><br>
		<input type="text" id="username" name="username"><br> <label
			for="pwd">Password:</label><br> <input type="password" id="pwd"
			name="pwd">

		<!-- 	입력 유형 제출
<input type="submit">버튼을 정의하다양식 데이터를 양식 보관소에 제출합니다.
폼 핸들러는 일반적으로 처리를 위한 스크립트가 있는 서버 페이지입니다.데이터를 입력합니다.
폼 핸들러는 폼의action 속성:
 -->
		<br> <label for="fname">First name:</label><br> <input
			type="text" id="fname" name="fname" value="John"><br> <label
			for="lname">Last name:</label><br> <input type="text" id="lname"
			name="lname" value="Doe"><br>
		<br> <input type="submit" value="Submit"> <br> <label
			for="fname">First name:</label><br> <input type="text"
			id="fname" name="fname" value="John"><br> <label
			for="lname">Last name:</label><br> <input type="text" id="lname"
			name="lname" value="Doe"><br>
		<br> <input type="submit"> <br>
		<!--   입력 유형 재설정 -->
		<input type="reset">리셋 버튼을 정의합니다.모든 폼 값을 기본값으로 리셋합니다. <label
			for="fname">First name:</label><br> <input type="text"
			id="fname" name="fname" value="John"><br> <label
			for="lname">Last name:</label><br> <input type="text" id="lname"
			name="lname" value="Doe"><br>
		<br> <input type="submit" value="Submit"> <input
			type="reset">

		<!-- 입력 타입 무선
<input type="radio">에 옵션버튼을 정의합니다.
\라디오 버튼을 사용하면 제한된 수의 선택 항목 중 하나만 선택할 수 있습니다.
    -->
		<br> <input type="radio" id="html" name="fav_language"
			value="HTML"> <label for="html">HTML</label><br> <input
			type="radio" id="css" name="fav_language" value="CSS"> <label
			for="css">CSS</label><br> <input type="radio" id="javascript"
			name="fav_language" value="JavaScript"> <label
			for="javascript">JavaScript</label>

		<!-- [ Input Type ]체크박스
<input type="checkbox">체크박스를 정의합니다.
\이 확인란을 사용하면 사용자가 제한된 수의 선택 항목 중 ZERO 또는 MORE 옵션을 선택할 수없이 선택할 수 있습니다.
 -->
		<br> <input type="checkbox" id="vehicle1" name="vehicle1"
			value="Bike"> <label for="vehicle1"> I have a bike</label><br>
		<input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
		<label for="vehicle2"> I have a car</label><br> <input
			type="checkbox" id="vehicle3" name="vehicle3" value="Boat"> <label
			for="vehicle3"> I have a boat</label>

		<!-- 입력 유형 버튼
<input type="button">는 버튼을 정의합니다
 -->
		<br>

		<button onclick="alet('경고')" value="클릭">클릭</button>

		<br>
		<!-- 입력 유형 색상
그<input type="color">색상을 포함해야 하는 입력 필드에 사용됩니다.
브라우저 지원에 따라 색상 선택기가 입력 필드에 표시될 수 있습니다
 -->
		<label for="favcolor">Select your favorite color:</label> <input
			type="color" id="favcolor" name="favcolor"> <br>
		<!-- 입력 유형 날짜
그<input type="date">는 날짜를 포함해야 하는 입력 필드에 사용됩니다.

브라우저 지원에 따라 달력 선택기가 입력 필드에 표시될 수 있습니다.
 -->
		<label for="birthday">Birthday:</label> <input type="date"
			id="birthday" name="birthday"> <br> <label for="datemax">Enter
			a date before 1980-01-01:</label> <input type="date" id="datemax"
			name="datemax" max="1979-12-31"><br>
		<br> <label for="datemin">Enter a date after 2000-01-01:</label>
		<input type="date" id="datemin" name="datemin" min="2000-01-02">



		<!-- 입력 유형 Datetime-local
그<input type="datetime-local">지정날짜 및 시간 입력 필드(타임존 없음)
브라우저 지원에 따라 달력 선택기가 입력 필드에 표시될 수 있습니다.
 -->
		<br> <label for="birthdaytime">Birthday (date and time):</label>
		<input type="datetime-local" id="birthdaytime" name="birthdaytime">

		<br>


		<!-- 입력 유형 이메일
그<input type="email">는, 전자 메일 주소를 포함할 필요가 있는 입력 필드에 사용됩니다.
브라우저 지원에 따라서는, 송신시에 전자 메일 주소를 자동적으로 검증할 수 있습니다.
일부 스마트폰은 이메일 유형을 인식하고 이메일 입력과 일치하도록 키보드에 ".com"을 추가합니다.
 -->

		<label for="email">Enter your email:</label> <input type="email"
			id="email" name="email"> <br>
		<!-- 입력 유형 파일
그<input type="file"> 에는 파일 선택 필드와 파일 업로드를 위한 "참조" 버튼이 정의되어 있습니다.
 -->
		<label for="myfile">Select a file:</label> <input type="file"
			id="myfile" name="myfile"> <br>


		<!-- 입력 유형 숨김
그<input type="hidden"> 는 숨김 입력 필드를 정의합니다(사용자에게는 표시되지 않음).
숨김 필드를 통해 웹 개발자는 볼 수 없는 데이터를 포함하거나양식을 제출할 때 사용자에 의해 수정됩니다.
숨김 필드에는 업데이트해야 하는 데이터베이스 레코드가 저장되는 경우가 많습니다.폼이 송신되었을 때.
주의: 이 값은 에서 사용자에게 표시되지 않습니다.페이지 내용은 브라우저 개발자를 사용하여 표시(편집 가능)할 수 있습니다.툴 또는 "View Source" 기능을 제공합니다.숨김 입력을 다음 형식으로 사용하지 마십시오.보안
 -->
		<label for="fname">First name:</label> <input type="text" id="fname"
			name="fname"><br>
		<br> <input type="hidden" id="custId" name="custId" value="3487">
		<input type="submit" value="Submit"> <br>
		<!-- 입력 유형 월
그<input type="month">사용자는 월과 연도를 선택할 수 있습니다.
브라우저 지원에 따라 달력 선택기가 입력 필드에 표시될 수 있습니다.
 -->
		<label for="bdaymonth">Birthday (month and year):</label> <input
			type="month" id="bdaymonth" name="bdaymonth"> <br>

		<!-- 입력 유형 번호
그<input type="number">를 정의합니다.숫자 입력 필드.
허가되는 번호에 제한을 설정할 수도 있습니다.
다음 예제에서는 1 ~5 의 값을 입력할 수 있는 숫자 입력 필드를 표시합니다.
 -->

		<label for="quantity">Quantity (between 1 and 5):</label> <input
			type="number" id="quantity" name="quantity" min="1" max="5">

		<br>


		<!-- Attribute	Description
checked	Specifies that an input field should be pre-selected when the page loads (for type="checkbox" or type="radio")
disabled	Specifies that an input field should be disabled
max	Specifies the maximum value for an input field
maxlength	Specifies the maximum number of character for an input field
min	Specifies the minimum value for an input field
pattern	Specifies a regular expression to check the input value against
readonly	Specifies that an input field is read only (cannot be changed)
required	Specifies that an input field is required (must be filled out)
size	Specifies the width (in characters) of an input field
step	Specifies the legal number intervals for an input field
value	Specifies the default value for an input field
 -->

		<label for="quantity">Quantity:</label> <input type="number"
			id="quantity" name="quantity" min="0" max="100" step="10" value="30">

		<br>

		<!--  입력 유형 범위
그<input type="range">는 정확한 값이 중요하지 않은 숫자(슬라이더 컨트롤 등)를 입력하기 위한 컨트롤을 정의합니다.체납범위는 0 ~ 100 입니다.다만, 다음의 내용에 대해서 제한을 설정할 수 있습니다.번호는 에서 받아들여집니다.min,max,그리고.step속성:
 -->
		<label for="vol">Volume (between 0 and 50):</label> <input
			type="range" id="vol" name="vol" min="0" max="50"> <br>
		<!-- 입력 유형 검색
그<input type="search">는 검색 필드에 사용됩니다(검색 필드는 일반 텍스트필드와 동일하게 동
 -->
		<label for="gsearch">Search Google:</label> <input type="search"
			id="gsearch" name="gsearch"> <br>

		<!-- 입력 타입 Tel
그<input type="tel">는 전화번호를 포함하는 입력 필드에 사용됩니다.
    -->
		<label for="phone">Enter your phone number:</label> <input type="tel"
			id="phone" name="phone" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}">

		<br>
		<!-- 입력 유형 시간
그<input type="time">그럼, 유저가 시간(타임 존 없음)을 선택할 수 있습니다.
브라우저 지원에 따라 시간 선택기가 입력 필드에 표시될 수 있습니다 -->
		<label for="appt">Select a time:</label> <input type="time" id="appt"
			name="appt"> <br>


		<!--  입력 유형 URL
그<input type="url">는 URL 주소를 포함하는 입력 필드에 사용됩니다.
브라우저 지원에 따라 url 필드의 유효성을 자동으로 확인할 수 있습니다.제출 시.
일부 스마트폰은 URL 유형을 인식하여 키보드에 ".com"을 추가하여 일치시킵니다.URL 입력
 -->
		<label for="homepage">Add your homepage:</label> <input type="url"
			id="homepage" name="homepage">


		<!--  입력 유형 주
그<input type="week">사용자는 주 및 연도를 선택할 수 있습니다.
\브라우저 지원에 따라 달력 선택기가 입력 필드에 표시될 수 있
 -->

		<br> <label for="week">Select a week:</label> <input type="week"
			id="week" name="week">
</body>


</html>