<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
<script>
function allowDrop(ev) {
  ev.preventDefault();
}

function drag(ev) {
  ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
  ev.preventDefault();
  var data = ev.dataTransfer.getData("text");
  ev.target.appendChild(document.getElementById(data));
}

function drag(ev) {
	  ev.dataTransfer.setData("text", ev.target.id);
	}

/* 드롭 위치 - 드래그오버
그ondragoverevent는 드래그된 데이터를 드롭할 수 있는 위치를 지정합니다.

기본적으로는 데이터/요소는 다른 요소에서 삭제할 수 없습니다.드롭을 허용하려면요소의 디폴트 처리를 방지해야 합니다.

이 조작을 실시하려면 ,event.preventDefault()ondragover 이벤트의 메서드:

	
	event.preventDefault()
 */	
	/* 드롭 - 온드롭 실행
드래그된 데이터가 삭제되면 삭제 이벤트가 발생합니다.

위의 예에서는 ondrop Atribut이 함수 drop(이벤트)를 호출합니다.
 */
 
 function drop(ev) {
	  ev.preventDefault();
	  var data = ev.dataTransfer.getData("text");
	  ev.target.appendChild(document.getElementById(data));
	}
	
/* 브라우저의 기본 데이터 처리를 방지하려면 prevent Default()를 호출합니다(기본값은 링크 온 드롭으로 열립니다).
dataTransfer.getData() 메서드를 사용하여 드래그된 데이터를 가져옵니다.이 메서드는 setData() 메서드에서 동일한 유형으로 설정된 모든 데이터를 반환합니다.
드래그된 데이터는 드래그된 요소의 ID("drag1")입니다.
드래그된 요소를 드롭 요소에 추가합니다.
 */	
	</script>

</head>
<body>
	<img src="common/img/HTMLDragDrop.png" alt="" />
<br>
<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div>

<img id="drag1" src="img_logo.gif" draggable="true" ondragstart="drag(event)" width="336" height="69">	
<!-- 	요소를 끌 수 있게 만들기
우선:요소를 끌 수 있도록 설정하려면draggabletrue의 속성:
<img draggable="true">


드래그 대상 - ondragstart 및 setData()
그런 다음 요소를 끌었을 때 수행할 작업을 지정합니다.

위의 예에서는ondragstart속성이 함수를 호출하고, 드래그(이벤트),드래그할 데이터를 지정합니다.

그dataTransfer.setData()method는 데이터 유형과 값을 설정합니다.드래그된 데이터:
 -->
</body>
</html>