<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<script>

	function myFunction() {


		
		var x = document.getElementsByClassName("city");
		for (var i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
	}
</script>


<style>
.city {
	background-color: tomato;
	color: white;
	padding: 10px;
}
</style>
</head>
<body>
	<h2 class="city main">London</h2>
	<h2 class="city">Paris</h2>
	<h2 class="city">Tokyo</h2>

	<!-- 여러 요소가 동일한 클래스를 공유할 수 있음
다른 HTML 요소가 동일한 클래스 이름을 가리킬 수 있습니다.

다음 예제에서는 둘 다<h2>그리고.<p> '시'계급을 가리키다같은 스타일을 공유합니다. -->
	<h2 class="city">Paris</h2>
	<p class="city">Paris is the capital of France</p>
</body>
</html>