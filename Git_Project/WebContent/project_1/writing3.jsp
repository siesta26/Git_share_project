<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>글 3입니다.</h2>

<form name="form" action="add.jsp" method="post">

<%
StringBuffer favname = request.getRequestURL();
%>
<input type="hidden" name="fav" value=<%=favname %>>
<br><br>
찜하기<br>
<input type="submit" value="찜">
</form>

<br><br>
<a href="fav.jsp">찜 목록 가기</a>
<a href="board.jsp">게시판 가기</a>
</body>
</body>
</html>