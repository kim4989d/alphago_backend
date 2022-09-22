<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>

	<table>
		<colgroup>
			<col span="2" style="background-color: #D6EEEE">
		</colgroup>
		<tr>
			<th>MON</th>
			<th>TUE</th>
			<th>WED</th>
			<th>THU</th>
		</tr>
	</table>
	<br>

<!-- 다중 콜 요소 -->
	<table>
		<colgroup>
			<col span="2" style="background-color: #D6EEEE">
			<col span="3" style="background-color: pink">
		</colgroup>
		<tr>
			<th>MON</th>
			<th>TUE</th>
			<th>WED</th>
			<th>THU</th>
		</tr>
	</table>

<br>
<!-- 빈 그룹
네가 원한다면표의 중앙에 열을 스타일링하려면 "빈"을 삽입합니다.<col>요소(없음)styles)의 이전 열에 대해:
 -->

<table>
  <colgroup>
    <col span="3">
    <col span="2" style="background-color: pink">
  </colgroup>
  <tr>
    <th>MON</th>
    <th>TUE</th>
    <th>WED</th>
    <th>THU</th>
</tr>
</table>
<br>

<!-- 열 숨기기
컬럼을 숨길 수 있습니다.visibility: collapse속 -->


<table>
  <colgroup>
    <col span="2">
    <col span="3" style="visibility: collapse">
  </colgroup>
  <tr>
    <th>MON</th>
    <th>TUE</th>
    <th>WED</th>
    <th>THU</th>
</tr>
</table>


</body>
</html>