<%@page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page errorPage="../error.jsp"%>
<%@page import="java.util.Calendar"%>
<%@page import="org2.*"%>
<%
request.setCharacterEncoding("euc-kr");
%>
<%
response.setContentType("text/html; charset=euc-kr");
%>
<html>


<head>
<title>조직도</title>


<script language="JavaScript">
	var PrivSeq = 0;
	var fldblue = '000000';
	var fldred = 'cf102f';

	function togglesub(sg) {
		var oDiv = document.all["PG" + sg];
		var oImg = document.all["IMG" + sg];

		if (oDiv != null) {
			if (oDiv.style.display == "none") {
				oDiv.style.display = ""
			} else {
				oDiv.style.display = "none"

			}
		}
	}

	function expandsub(sg) {
		var oDiv = document.all["PG" + sg];
		var oImg = document.all["IMG" + sg];
		if (oDiv != null) {
			if (oDiv.style.display == "none") {
				oDiv.style.display = ""
				oImg.src = "image/plus.gif";
			}
		}
		changecolor(sg);
	}

	function changecolor(sg) {
		document.all["A" + sg].style.color = fldred; // selected color
		if (PrivSeq != 0 && PrivSeq != sg)
			document.all["A" + PrivSeq].style.color = fldblue; //unselected color
		PrivSeq = sg;
	}

	function goThere(str) {
		if (str != '') {

			eval("document.codeform.action='org_code.jsp'");
			eval("document.codeform.code.value=str");
			eval("document.codeform.target='bottom'");
			eval("document.codeform.submit()");

			eval("document.codeform.action='org_base_inform.jsp'");
			eval("document.codeform.code.value=str");
			eval("document.codeform.target='top'");
			eval("document.codeform.submit()");
			alert(str);
		}
	}
</script>
</head>
<body bgcolor="#FFFFFF">
	<%
	String sdate = "";
	sdate = request.getParameter("ttime");
	if (sdate == null || sdate.equals("")) {
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int date = cal.get(Calendar.DATE);
		sdate = (year + "-" + month + "-" + date);
	}
	%>
	<form name='times' method="post" action="tree.jsp">
		<table width="164" border="0">
			<tr>
				<td width="50">날짜</td>
				<td width="75"><input name="ttime" type="text" size="10"
					value="<%=sdate%>"></td>
				<td width="39"><input type="submit" value="조회"></td>
			</tr>
		</table>
	</form>

	<form method='post' name='codeform'>

		<input name='code' type='hidden' />

		<%
		Tree_arch tree = new Tree_arch();
		String sb = tree.getMenuTreeString(sdate).toString();
		%>
	</form>
	<%=sb%>
</body>
</html>