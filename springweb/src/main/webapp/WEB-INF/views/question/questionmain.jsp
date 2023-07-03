<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.base.webapp.common.tray.ResultSetTray,com.base.webapp.common.session.ConSessionManager"%>

<%@ page import="com.base.webapp.common.util.CommonUtil"%>


<%
ResultSetTray tray = null;
if (request.getAttribute("rsTray") != null)

{
	tray = (ResultSetTray) request.getAttribute("rsTray");
}

String questionname = CommonUtil.IsNull(request, "questionname");
String questionphone = CommonUtil.IsNull(request, "questionphone");

System.out.println("view:" + questionname);
System.out.println("view:" + questionphone);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function QuestionNext() {

		var frm = document.questionmain;
		frm.action = "/?cmd=question/questionmainnext";
		frm.method = "post";
		frm.submit();

	}
</script>

</head>
<body>
	<form name="questionmain">
		<input type="hidden" name="questionname" value=<%=questionname%> /> <input
			type="hidden" name="questionphone" value=<%=questionphone%> />

		<table border="1" style="width: 100%">

			<%
			if (request.getAttribute("rsTray") != null) {
				for (int i = 0; i < tray.getRowCount(); i++) {
			%>

			<tr>
				<td colspan="4"><%=tray.get("questionid", i)%><%=tray.get("questionsubject", i)%></td>
			</tr>
			<tr>

				<td><%=CommonUtil.QuestionRadio(tray.get("questionid", i), tray.get("questioncaseradio", i))%></td>
			</tr>
			<%
				}
			}
			%>


			<tr>
				<td><input type="button" value="next" onclick="QuestionNext()" /></td>
			</tr>

		</table>

	</form>


</body>
</html>