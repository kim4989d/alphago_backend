<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="common/common.jsp"%>
<html>
<head>
<title>사용자_게시판_공지사항</title>
<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="TEXT/HTML; CHARSET=EUC-KR">
<META NAME="CONTENT-LANGUAGE" CONTENT="KR">
<LINK REL='STYLESHEET' HREF='<%=DIR_CSS%>skt_Form.css' TYPE='TEXT/CSS'>
<LINK REL='STYLESHEET' HREF='<%=DIR_CSS%>skt_Default.css'
	TYPE='TEXT/CSS'>


<script type="text/javascript">
	function NoticeList() {
	var fr=document.noticeviewfrm;
	frm.method="post";
	frm.action="/?cmd=noticelist";
	frm.submit();
	
	}
</script>
</head>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<body>
	<form name="noticeviewfrm">
<input type="hidden"  name="cmd"  value="noticelist">
		<table width="1024" height="700" border="1" cellspacing="0"
			cellpadding="0">
			<tr>
				<td><%=tray1.get("usersubject")%></td>
			</tr>
			<tr>
				<td><textarea rows="10" cols="10">
<%=tray1.get("usercontent")%>

</textarea></td>

			</tr>
			<tr>
				<td><button value="수정">수정</button>
					<button value="삭제">삭제</button>
					<button value="목록"  onclick="NoticeList()">목록</button></td>
			</tr>


		</table>
	</form>
</body>
</html>
