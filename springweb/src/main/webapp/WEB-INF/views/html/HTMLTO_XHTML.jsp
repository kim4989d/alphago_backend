
<!-- XHTML - <!DOSCTYPE ....>는필수입니다.
XHTML 문서에는 XHTML <!가 필요합니다.DOSCTYPE > 선언.
<html>, <head>, <title> 및 <body> 요소 및 <html>의 xmlns 속성도 존재해야 합니다.문서의 xml 네임스페이스를 지정해야 합니다.
 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Title of document</title>
</head>
<body>

	some content here...

	<!--  XHTML 요소가 올바르게 중첩되어야 함
XHTML에서는 다음과 같이 요소가 항상 서로 적절하게 중첩되어야 합니다.
 -->

	<b><i>Some text</i></b>

	<!-- <b><i>Some text</b></i> -->


	<p>This is a paragraph</p>
	<p>This is another paragraph</p>

	<!-- <p>This is a paragraph
<p>This is another paragraph
 -->

	XHTML 요소는 소문자여야 합니다. XHTML 에서는, 요소명은 항상 다음과 같이 소문자로 할 필요가 있습니다.


	<body>
		<p>This is a paragraph</p>
	</body>

	<!-- <BODY>
<P>This is a paragraph</P>
</BODY>

 -->



	XHTML 속성 이름은 소문자로 입력해야 합니다. XHTML 에서는, 어트리뷰트명은 항상 다음과 같이 소문자로 할 필요가
	있습니다.
	<a href="https://www.w3schools.com/html/">Visit our HTML tutorial</a>
	<!-- <a HREF="https://www.w3schools.com/html/">Visit our HTML tutorial</a> -->


<!-- XHTML 속성 값은 따옴표로 묶어야 합니다.
XHTML에서는 Atribut 값은 항상 다음과 같이 따옴표로 묶어야 합니다. -->
<a href="https://www.w3schools.com/html/">Visit our HTML tutorial</a>
<!-- <a href=https://www.w3schools.com/html/>Visit our HTML tutorial</a> -->


<!-- XHTML Atribute 최소화는 금지되어 있습니다.
XHTML에서는 Atribute 최소화는 금지되어 있습니다.
 -->

<input type="checkbox" name="vehicle" value="car" checked="checked" />
<input type="text" name="lastname" disabled="disabled" />

<!-- <input type="checkbox" name="vehicle" value="car" checked />
<input type="text" name="lastname" disabled />
 --></body>
</html>