<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>

	<form action="/action_page.php"
		oninput="x.value=parseInt(a.value)+parseInt(b.value)">
		<input> 요소
		<!-- 가장 많이 사용되는 폼 요소 중 하나는<input>요소.
그<input>요소는 에 따라 여러 가지 방법으로 표시할 수 있습니다.type 기여하다.
 -->
		<label for="fname">First name:</label> <input type="text" id="fname"
			name="fname"> <label> 요소 그<label>요소는 라벨을
				정의합니다.여러명폼 요소 그<label>요소는 에 도움이 됩니다.화면표시 사용자는 화면표시자가 라벨을 큰
					소리로 읽어내기 때문에사용자는 입력 요소에 초점을 맞춥니다. 그<label>또, 유저에게 있어서도 도움이
						됩니다.매우 작은 영역(옵션 버튼이나 확인란 등)을 클릭하기 어렵다- 사용자가 이 텍스트 내의 텍스트를 클릭하면<label>요소,
							전환됩니다.라디오 버튼/버튼 그for의 속성<label>태그는 해야 한다에 필적하다id의 속성<input>
								요소를 결합합니다. <label for="cars">Choose a car:</label> <select
								id="cars" name="cars">
									<option value="volvo">Volvo</option>
									<option value="saab">Saab</option>
									<option value="fiat">Fiat</option>
									<option value="audi">Audi</option>
							</select> <!-- 그<option>요소는 다음과 같은 옵션을 정의합니다.선택된.
\기본적으로 드롭다운 목록의 첫 번째 항목이 선택되어 있습니다.
미리 선택된 옵션을 정의하려면selected기여하다옵션을 선택합니
 -->
								<option value="fiat" selected>Fiat</option> <!--  표시값:
를 사용합니다.sizeattribute를 사용하여 표시되는 값의 수를 지정합
 --> <label for="cars">Choose a car:</label> <select id="cars"
								name="cars" size="3">
									<option value="volvo">Volvo</option>
									<option value="saab">Saab</option>
									<option value="fiat">Fiat</option>
									<option value="audi">Audi</option>
							</select> <!-- 여러 선택 허용:
를 사용합니다.multipleattribute: 사용자가 여러 값을 선택할 수 있도록 합니다.
 --> <label for="cars">Choose a car:</label> <select id="cars"
								name="cars" size="4" multiple>
									<option value="volvo">Volvo</option>
									<option value="saab">Saab</option>
									<option value="fiat">Fiat</option>
									<option value="audi">Audi</option>
							</select> <!-- <textarea> 요소
그<textarea>요소는 여러 줄 입력 필드(텍스트 영역)를 정의합니다.
 --> <textarea name="message" rows="10" cols="30">
The cat was playing in the garden.
</textarea> <!-- 그rowsattribute는 표시 가능한 행 수를 지정합니다.텍스트 영역
그colsattribute는 텍스트의 표시 너비를 지정합니다
 CSS를 사용하여 텍스트 영역의 크기를 정의할 수도 있습니다.
 --> <textarea name="message" style="width: 200px; height: 600px;">
The cat was playing in the garden.
</textarea> <br> <버튼> 요소 그
								<button>
									요소는 클릭 가능한 것을 정의합니다.버튼:
									<button type="button" onclick="alert('Hello World!')">Click
										Me!</button>

									<br>

									<fieldset>
										및
										<legend>
											요소 그
											<fieldset>
												요소는 관련 데이터를 폼으로 그룹화하기 위해 사용됩니다. 그
												<legend>
													엘리먼트는 의 캡션을 정의합니다.
													<fieldset>
														요소.

														<!-- 			<데이터리스트> 요소 그<datalist>
															element는 사전 정의된 옵션 목록을 지정합니다.
															<input>요소. 사용자가 데이터를 입력할 때 미리 정의된 옵션의 드롭다운 목록이
															표시됩니다. 그list의 속성
															<input>요소, 참조할 필요가 있습니다.id의 속성
															<datalist>
																요소. -->
														<input list="browsers">
														<datalist id="browsers">
															<option value="Internet Explorer">
															<option value="Firefox">
															<option value="Chrome">
															<option value="Opera">
															<option value="Safari">
														</datalist>


														<!-- 																<output> 요소
그<output>요소는 계산의 결과를 나타낸다(예:스크립트에 의해 실행됩니다).
 -->

														<input type="range" id="a" name="a" value="50">
														100 + <input type="number" id="b" name="b" value="50">
														=
														<output name="x" for="a b"></output>
														<br>
														<br> <input type="submit"> <br> <img
															src="common/img/htmlformelement.png" alt="" />
	</form>
</body>
</html>