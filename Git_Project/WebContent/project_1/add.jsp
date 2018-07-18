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
<%!ArrayList<String> list; %>
<%--<%!
ArrayList<String> list = new ArrayList<String>();
%> --%>
<%
request.setCharacterEncoding("UTF-8");
String favname = request.getParameter("fav");
out.print(favname);
ArrayList list = (ArrayList)session.getAttribute("favlist");
if(list==null)
{
	list=new ArrayList<String>();
}
list.add(favname);
session.setAttribute("favlist",list);
%>
<script>
alert("글이 찜 목록에 추가되었습니다.")
history.go(-1)
</script>
</body>
</html>