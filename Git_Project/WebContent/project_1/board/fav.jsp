<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>찜 목록</h2>
<hr>
<%
ArrayList list = (ArrayList)session.getAttribute("favlist");
if(list==null)
{
	out.println("선택한 글이 없습니다.");
}
else{
	for(Object favname:list){
		%><a href="<%=favname%>">글</a><br><%
	}
}
%>
</div>
</body>
</html>