<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.base.webapp.common.tray.ResultSetTray,com.base.webapp.common.session.ConSessionManager" %>

<%

ResultSetTray tray=null;
if(request.getAttribute("rsTray") !=null);
{
	 tray=(ResultSetTray)request.getAttribute("rsTray");
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
 <table border="1" width="500" height="500">
 
 <%
 
 	for(int i=0;i<tray.getRowCount();i++){
 %>
 
 	<tr>
 		<td colspan="4"><%=tray.get("questionsubject",i) %>     </td>
 	</tr>
 	<tr>
 		<td><input type="radio" name="" id="" /></td>
 		<td><input type="radio" name="" id="" /></td>
 		<td><input type="radio" name="" id="" /></td>
 		<td><input type="radio" name="" id="" /></td>
 	</tr>
 <%
 	}
 %>
 
 </table>




</body>
</html>