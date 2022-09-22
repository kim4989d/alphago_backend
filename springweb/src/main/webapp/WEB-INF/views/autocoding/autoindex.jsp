<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="<c:url value='resources/js/autocommon.js'/>" ></script>




<!-- 	function AutoCoding2(form) { -->

<!-- 		alert('test'); -->

<!-- 		for (var i = 0; i < form.namearray.length; i++) { -->
<!-- 			alert(form.namearray[i].value); -->

<!-- 		} -->

<!-- 	} -->
</script>




</head>

<body>

	<form name="loginfrm">

		<table style="width: 100%">
			<tr>
				<td><input type="text" name="namearray" id="" /></td>
			</tr>
			<tr>
				<td><input type="text" name="namearray" id="" /></td>
			</tr>
			<tr>
				<td><input type="button" value="login"
					onclick="AutoCoding(this.form)" /></td>
			</tr>
		</table>
	</form>
</body>
</html>