
<!-- SVG와 캔버스의 차이점
SVG는 XML에서 2D 그래픽을 설명하는 언어입니다.
캔버스는 (JavaScript를 사용하여) 2D 그래픽을 즉시 그립니다.
SVG는 XML 기반입니다.즉, SVG 내에서 모든 요소를 사용할 수 있습니다.DOM. 요소에 JavaScript 이벤트 핸들러를 연결할 수 있습니다.
SVG에서는 그려진 각 도형이 객체로 기억됩니다.SVG의 Atribute가오브젝트가 변경되면 브라우저는 자동으로 쉐이프를 다시 표시할 수 있습니다.
\캔버스는 픽셀 단위로 렌더링됩니다.캔버스에서 그래픽이 그려지면 브라우저에 의해 잊혀집니다.만약 그렇다면위치를 변경해야 합니다. 전체 씬(scene)을 다시 그려야 합니다.그래픽에 가려져 있었을 가능성이 있는 오브젝트.
 -->


<!-- Canvas	SVG
Resolution dependent
No support for event handlers
Poor text rendering capabilities
You can save the resulting image as .png or .jpg
Well suited for graphic-intensive games
Resolution independent
Support for event handlers
Best suited for applications with large rendering areas (Google Maps)
Slow rendering if complex (anything that uses the DOM a lot will be slow)
Not suited for game applications
 -->
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>
	SVG가 뭐죠? SVG는 Scalable Vector Graphics의 약자입니다. SVG는 웹용 그래픽을 정의하는 데
	사용됩니다. SVG는 W3C 권장 사항입니다. HTML
	<svg> 요소
HTML<svg>element는 SVG 그래픽스용 컨테이너입니다.

SVG에는 경로, 상자, 원, 텍스트 및 그래픽 이미지를 
<svg width="100" height="100">
  <circle cx="50" cy="50" r="40" stroke="green" stroke-width="4"
					fill="yellow" />
</svg>

<br>


<svg width="400" height="100">
  <rect width="400" height="100"
					style="fill:rgb(0,0,255);stroke-width:10;stroke:rgb(0,0,0)" />
</svg>



<br>

<svg width="400" height="180">
  <rect x="50" y="20" rx="20" ry="20" width="150" height="150"
  style="fill:red;stroke:black;stroke-width:5;opacity:0.5" />
</svg>


<br>


<svg width="300" height="200">
  <polygon points="100,10 40,198 190,78 10,78 160,198"
  style="fill:lime;stroke:purple;stroke-width:5;fill-rule:evenodd;" />
</svg>
<br>

<svg height="130" width="500">
  <defs>
    <linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:rgb(255,255,0);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(255,0,0);stop-opacity:1" />
    </linearGradient>
  </defs>
  <ellipse cx="100" cy="70" rx="85" ry="55" fill="url(#grad1)" />
  <text fill="#ffffff" font-size="45" font-family="Verdana" x="50" y="86">SVG</text>
  Sorry, your browser does not support inline SVG.
</svg>





</body>
</html>