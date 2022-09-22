<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>


<!-- 
	tr:n번째-자녀(짝수{
배경색:#D6EE;
}


td:n번째-자녀(짝수),
n번째 아이(짝수){
배경색:#D6EE;
} -->

<style>

tr:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}

th:nth-child(even),td:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
/* 각 테이블 행의 맨 아래에만 경계를 지정하는 경우 수평 구분선이 있는 테이블이 표시됩니다.

를 추가합니다.border-bottom만인의 재산tr수평 구분선을 얻기 위한 요소: */
tr {
  border-bottom: 1px solid #ddd;
}
</style>
</head>
<body>
	
	
</body>
</html>