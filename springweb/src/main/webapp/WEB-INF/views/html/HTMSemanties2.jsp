<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>

<style>
.all-browsers {
	margin: 0;
	padding: 5px;
	background-color: lightgray;
}

.all-browsers>h1, .browser {
	margin: 10px;
	padding: 5px;
}

.browser {
	background: white;
}

.browser>h2, p {
	margin: 4px;
	font-size: 90%;
}
</style>

</head>
<body>



	<article class="all-browsers">
		<h1>Most Popular Browsers</h1>
		<article class="browser">
			<h2>Google Chrome</h2>
			<p>Google Chrome is a web browser developed by Google, released
				in 2008. Chrome is the world's most popular web browser today!</p>
		</article>
		<article class="browser">
			<h2>Mozilla Firefox</h2>
			<p>Mozilla Firefox is an open-source web browser developed by
				Mozilla. Firefox has been the second most popular web browser since
				January, 2018.</p>
		</article>
		<article class="browser">
			<h2>Microsoft Edge</h2>
			<p>Microsoft Edge is a web browser developed by Microsoft,
				released in 2015. Microsoft Edge replaced Internet Explorer.</p>
		</article>
	</article>


<!-- 그<article> element는 독립적이고 자급자족적인 콘텐츠를 지정합니다.
그<section>요소는 문서의 섹션을 정의합니다.
그 정의를 사용하여 그 요소들을 어떻게 내포시킬지 결정할 수 있을까요?아니, 안 돼!
그래서 당신은 HTML 페이지를 찾을 것이다.<section>요소들재중<article>요소 및<article>포함하는 요소<section>요소들.
 -->

</body>
</html>