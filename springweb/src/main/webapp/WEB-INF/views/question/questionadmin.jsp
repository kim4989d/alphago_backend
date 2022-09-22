<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function QuestionInput(){
	
	var frm=document.questionfrm;
	
	frm.action="/?cmd=question/questionnext";
	frm.method="post";
	frm.submit();
}

</script>

</head>
<body>
	<form name="questionfrm">

		<table style="border: 1px;width: 100%;">
			
			<tr>
				<td>문제키</td>
				<td><input type="text" name="questionid" id="" /></td>
			</tr>
			
			<tr>
				<td>문제</td>
				<td><textarea rows="5" cols="20" style="width: 100%" name="questionsubject" > </textarea></td>
			</tr>
			
			<tr>
				<td>4지선다</td>
				<td><textarea rows="5" cols="20" style="width: 100%" name="questioncaseradio" ></textarea></td>
			</tr>
			
			<tr>
				<td>점수</td>
				<td><input type="text" name="questionpoint" id="" /></td>
			</tr>
			<tr>
				<td>정답</td>
				<td><input type="text" name="questioncorrect" id="" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="button" value="question" onclick="QuestionInput()" style="width: 100%"/></td>

			</tr>
		</table>
	</form>

</body>
</html>