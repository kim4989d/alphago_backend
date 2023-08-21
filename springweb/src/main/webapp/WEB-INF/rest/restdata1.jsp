<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script> -->

<title>Insert title here</title>

<script src="<c:url value='/lib/jquery-3.7.0.min.js' />"></script>

<!-- <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> -->

<%-- <script src="<c:url value='/lib/axios.min.js' />"></script>  --%>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>



</head>
<body>

	<ul id="ul"></ul>

	<script type="text/javascript">
	let ul = document.getElementById('ul');
	axios.get('/rest1')
    .then(res => {
        //outputDiv.textContent = response.data;
    	console.log(res.data);
  
    for (let i = 0; i < res.data.length; i++) {
     	ul.innerHTML+=	"<li>"+res.data[i].rest1+res.data[i].rest2+res.data[i].rest3+res.data[i].rest4+" </li>";
 
	}
    
    
    })
    .catch(error => {
        //outputDiv.textContent = 'Error fetching data';
        console.log(error);
    });
	
		
		</script>
	<a href="<c:url value='/rest1' />">Home</a>
</body>
</html>