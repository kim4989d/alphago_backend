<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>

	<img src="common/img/HTMLGeolocation.png" alt="" />


	<!-- 	HTML 지리 위치 사용
그getCurrentPosition()메서드는 사용자의 위치를 반환하는 데 사용됩니다.

다음 예제에서는 사용자 위치의 위도와 경도를 반환합니다.

예
 -->
	<script>
		var x = document.getElementById("demo");
		function getLocation() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(showPosition);
			} else {
				x.innerHTML = "Geolocation is not supported by this browser.";
			}
		}

		function showPosition(position) {
			x.innerHTML = "Latitude: " + position.coords.latitude
					+ "<br>Longitude: " + position.coords.longitude;
		}
	</script>



	<!-- 	설명 예:
Geolocation이 지원되는지 확인합니다.
지원되는 경우 getCurrentPosition() 메서드를 실행합니다.그렇지 않은 경우 사용자에게 메시지를 표시합니다.
getCurrentPosition() 메서드가 성공하면 파라미터(showPosition)로 지정된 함수로 좌표 객체가 반환됩니다.
show Position() 함수는 위도와 경도를 출력합니다.
위의 예는 오류 처리가 없는 매우 기본적인 Geolocation 스크립트입니다.

	오류 및 거부 처리
의 두 번째 파라미터getCurrentPosition()처리에는 메서드를 사용합니다.에러입니다. 사용자 위치를 가져오지 못한 경우 실행할 함수를 지정합니다.
 -->


	<script>
		function showError(error) {
			switch (error.code) {
			case error.PERMISSION_DENIED:
				x.innerHTML = "User denied the request for Geolocation."
				break;
			case error.POSITION_UNAVAILABLE:
				x.innerHTML = "Location information is unavailable."
				break;
			case error.TIMEOUT:
				x.innerHTML = "The request to get user location timed out."
				break;
			case error.UNKNOWN_ERROR:
				x.innerHTML = "An unknown error occurred."
				break;
			}
		}
	</script>

<!-- 	 로케이션 고유의 정보 이 페이지에서는 지도에 사용자의 위치를 표시하는 방법을 시연했습니다. 지리 로케이션은, 다음과 같은
	로케이션 고유의 정보에도 매우 편리합니다. 최신 현지 정보 사용자 근처에 관심 지점 표시 턴 바이 턴 내비게이션(GPS)
	getCurrentPosition() 메서드 - 데이터 반환 그getCurrentPosition()method는 성공 시 개체를
	반환합니다.위도,경도 및 정확도 속성은 항상 반환됩니다.다른 속성은 반환됩니다.가능한 경우: */
 -->	<img src="common/HTMLGeolocation.png" alt="" />
	<br>

	<script>
		var x = document.getElementById("demo");
		function getLocation() {
			if (navigator.geolocation) {
				navigator.geolocation.watchPosition(showPosition);
			} else {
				x.innerHTML = "Geolocation is not supported by this browser.";
			}
		}
		function showPosition(position) {
			x.innerHTML = "Latitude: " + position.coords.latitude
					+ "<br>Longitude: " + position.coords.longitude;
		}
	</script>


</body>
</html>