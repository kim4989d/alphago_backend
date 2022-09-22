<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>
	<form action="/test.jsp" autocomplete="on">

		<!-- 		값 속성 입력valueattribute는 입력 필드의 초기값을 지정합니다. <label for="fname">First
 -->
		name:</label><br> <input type="text" id="fname" name="fname" value="John"><br>
		<label for="lname">Last name:</label><br> <input type="text"
			id="lname" name="lname" value="Doe">

		<!--  읽기 전용
		속성 입력readonlyattribute는 입력 필드가 읽기 전용임을 지정합니다. 읽기 전용 입력 필드는 수정할 수
		없습니다(단, 사용자는 이 필드를 탭하여 강조 표시하고 해당 입력 필드에서 텍스트를 복사할 수 있습니다). 양식을 제출할 때
		읽기 전용 입력 필드 값이 전송됩니다! -->
		<label for="fname">First name:</label><br> <input type="text"
			id="fname" name="fname" value="John" readonly><br> <label
			for="lname">Last name:</label><br> <input type="text" id="lname"
			name="lname" value="Doe">
		<!--  디세이블된 속성
		입력disabledattribute는 입력 필드를 디세블로 하는 것을 지정합니다. 비활성화된 입력 필드는 사용할 수 없으며
		클릭할 수 없습니다. 비활성화된 입력 필드의 값은 양식을 제출할 때 전송되지 않습니다! <label for="fname">First
			 -->
		name:</label><br> <input type="text" id="fname" name="fname" value="John"
			disabled><br> <label for="lname">Last name:</label><br>
		<input type="text" id="lname" name="lname" value="Doe"> s
		<!-- ize 속성 입력sizeattribute는,입력 필드의 표시 너비(문자 단위)입니다. 디폴트값size20입니다.
		주의:size기여하다는 text, search, tel, url, e-메일 및 다음 입력 유형으로 동작합니다.패스워드  -->
		<label for="fname">First name:</label><br> <input type="text"
			id="fname" name="fname" size="50"><br> <label for="pin">PIN:</label><br>
		<input type="text" id="pin" name="pin" size="4"> max length 속성
		<!-- 입력maxlengthattribute는 입력 필드에 허용되는 최대 문자 수를 지정합니다. 주의: a의
		경우maxlength설정되어 있는 경우, 입력 필드가 수신할 수 있는 것은,지정된 문자 수.그러나 이 속성은 피드백을 제공하지
		않습니다. 그래서 사용자에게 경고하고 싶다면JavaScript 코드를 작성해야 합니다.  -->
		<label for="fname">First name:</label><br> <input type="text"
			id="fname" name="fname" size="50"><br> <label for="pin">PIN:</label><br>
		<input type="text" id="pin" name="pin" maxlength="4" size="4">
		<!-- 		최소 아트리뷰트와 최대 아트리뷰트
		입력min그리고.maxAtribute는 다음 중 하나의 최소값과 최대값을 지정합니다.입력 필드 그min그리고.max속성은
		숫자, 범위, 날짜, datetime-local, 월, 시간 및 주 입력 유형으로 작동합니다. 힌트: max Atribut과
		min Atribute를 함께 사용하여,법적 가치의 범위
	 -->
		<label for="datemax">Enter a date before 1980-01-01:</label> <input
			type="date" id="datemax" name="datemax" max="1979-12-31"><br>
		<br> <label for="datemin">Enter a date after 2000-01-01:</label>
		<input type="date" id="datemin" name="datemin" min="2000-01-02"><br>
		<br> <label for="quantity">Quantity (between 1 and 5):</label> <input
			type="number" id="quantity" name="quantity" min="1" max="5">

		<!-- 	다중 속성 입력multipleattribute는 사용자가 여러 값을 입력할 수 있도록 지정합니다.입력 필드
		그multiple속성은 이메일 및 파일 입력 유형으로 작동합니다. 
	 -->
		<label for="files">Select files:</label> <input type="file" id="files"
			name="files" multiple>


		<!-- 	패턴 속성 입력patternattribute는 attribute에 의해,입력 필드의 값은 양식을 제출할 때 대조됩니다.
		그pattern속성은 다음 입력 유형으로 작동합니다.text,날짜, 검색, URL, 전화, 이메일 및 비밀번호. 
	 -->
		<label for="country_code">Country code:</label> <input type="text"
			id="country_code" name="country_code" pattern="[A-Za-z]{3}"
			title="Three letter country code"> 자리 표시자 속성
		<!-- 		입력placeholderattribute 지정입력 필드의 예상 값을 설명하는 짧은 힌트(샘플 값 또는 짧은 설명)(예상 포맷)
		사용자가 입력하기 전에 입력 필드에 짧은 힌트가 표시됩니다.가치. 그placeholder속성은 텍스트, 검색, URL,
		tel, 이메일 및 비밀번호 입력 유형으로 작동합니다.
 -->
		<label for="phone">Enter a phone number:</label> <input type="tel"
			id="phone" name="phone" placeholder="123-45-678"
			pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}">

		<!-- 	필수 속성 입력requiredattribute는 폼을 전송하기 전에 입력 필드를 입력해야 함을 지정합니다.
		그required속성은 텍스트, 검색, URL, tel, 이메일, 비밀번호, 날짜 피커, 번호, 체크박스, 무선 및 파일 입력
		유형으로 기능합니다. 
	 -->
		<label for="username">Username:</label> <input type="text"
			id="username" name="username" required>
		<!-- 	 스텝 속성
		입력stepattribute는 network의 정규 번호 간격을 지정합니다.입력 필드 예: step="3"인 경우 법적 번호는
		-3, 0, 3, 6 등이 될 수 있습니다. 힌트: 이 속성은 max 및 min 속성과 함께 사용하여 유효한 값의 범위를 만들
		수 있습니다. 그step속성은 숫자, 범위, 날짜, datetime-local, 월, 시간 및 주 입력 유형으로 작동합니다.
 -->
		<label for="points">Points:</label> <input type="number" id="points"
			name="points" step="3">
		<!-- 	자동 포커스 속성 입력autofocusattribute는 다음과
		같이 지정합니다.입력 필드는 페이지가 로드될 때 자동으로 포커스를 받습니다. -->
		<label for="fname">First name:</label><br> <input type="text"
			id="fname" name="fname" autofocus><br> <label
			for="lname">Last name:</label><br> <input type="text" id="lname"
			name="lname">
		<!-- 높이 및 너비 속성
		입력height그리고.widthAttribute는 높이와 너비를 지정합니다. -->
		<input type="image"> <label for="fname">First name:</label> <input
			type="text" id="fname" name="fname"><br> <br> <label
			for="lname">Last name:</label> <input type="text" id="lname"
			name="lname"><br> <br> <input type="image"
			src="img_submit.gif" alt="Submit" width="48" height="48"> 목록
		속성 입력listAttribute는
		<datalist>
			<input> 요소의 사전 정의된 옵션을 포함하는 요소.
			<input list="browsers">
			<datalist id="browsers">
				<option value="Internet Explorer">
				<option value="Firefox">
				<option value="Chrome">
				<option value="Opera">
				<option value="Safari">
			</datalist>

			<!-- 			자동 완성 속성 입력autocompleteattribute는 폼 또는입력 필드에는 자동 완성이 켜지거나 꺼져야 합니다. 자동
			완료를 사용하면 브라우저가 값을 예측할 수 있습니다.사용자가 작업을 시작할 때필드를 입력합니다.브라우저에 필드를 입력하는
			옵션이 표시됩니다.이전 입력된 값에서 선택합니다. 그autocompleteAttribute는 와 함께 동작합니다.
 -->
			<!-- 		및 그다음에 나오는<input>유형: 텍스트, 검색, URL, tel, e-메일, 비밀번호, 날짜 피커,
				범위 및 색상.
		 -->
			<label for="fname">First name:</label>
			<input type="text" id="fname" name="fname">
			<br>
			<br>
			<label for="lname">Last name:</label>
			<input type="text" id="lname" name="lname">
			<br>
			<br>
			<label for="email">Email:</label>
			<input type="email" id="email" name="email" autocomplete="off">
			<br>
			<br>
			<input type="submit" value="Submit">
	</form>
</body>
</html>