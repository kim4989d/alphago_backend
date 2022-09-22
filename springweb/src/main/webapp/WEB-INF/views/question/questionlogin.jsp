<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script type="text/javascript">
	function next() {

		var frm = document.nextfrm;

		if (frm.questionname.value == "") {

			alert('아이디 입력 ');
			return;

		}

		if (frm.questionphone.value == "") {

			alert('핸드폰 입력 ');
			return;

		}

		frm.action = "/?cmd=question/questionmain";
		frm.method = "post";
		frm.submit();

	}
</script>
</head>
<body>
	<form name="nextfrm">
		<table width="500" height="150" border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="questionname"  /></td>
			</tr>
			<tr>
				<td>핸드폰</td>
				<td><input type="text" name="questionphone"  /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" onclick="next()" value="next" style="width:100%"></td>

			</tr>
		</table>
	
	<h1>로그인 :이름 핸드폰 번호 입력하고 문제 50분안에 문제풀고 컴퓨터덮고 핸드폰 내리고 가만히 있으면 됩니다. 
	9:00 ~ 9:50 분까지 하겠습니다. 모든 문제는 5점씩~~~~~~~ 시작 
	
	
	</h1> 
	
	</form>

</body>
</html>