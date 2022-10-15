<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
function Question(){
	
var frm=document.questionfrm;
	frm.action="/?cmd=question/questionnext";
	frm.method="post";
	frm.submit();
	
}


</script>				

</head>
<body>
	<form  name="questionfrm">
		<table style="width: 100%">
			<tr>
				<td>문제</td>
				<td><textarea rows="5" cols="30" name="questionsubject"></textarea></td>
			</tr>
			<tr>
				<td>4 case or reply</td>
				<td><input type="text" name="questioncaseradio" id="" /></td>
			</tr>
			<tr>

				<td colspan="2"><input type="button" value="전송" onclick="Question()"></td>
			</tr>
		</table>


	</form>
</body>
</html> 
