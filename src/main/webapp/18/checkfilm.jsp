<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.hand.entity.FilmEntity"%>
<%@page import="com.hand.dao.impl.FilmDaoImpl"%>
<%@page import="com.hand.dao.FilmDao"%>
<%@page import="com.hand.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看电影列表</title>

</head>
<body>


		<%
		Connection conn =null;  %>
		<% 
		try {
			conn = ConnectionFactory.getInstance().makeConnection();  
			conn.setAutoCommit(false);
			
			FilmDao filmDao = new FilmDaoImpl();
			FilmEntity film = new FilmEntity();
			ResultSet  data =null;
			data = filmDao.get(conn, film);
			conn.commit();
		%>
		<% 	while(data.next()){	%>
			电影编号：<a><%=data.getLong("film_id")%></a><br/>
			标题：<a><%=data.getString("title")%></a><br/>
			简介：<a><%=data.getString("description")%></a><br/>
			语言：<a><%=data.getString("name")%></a><br/>
			<form action="<%= request.getContextPath()%>/DeleteServlet" Method="post">
			<input type="hidden" name="film_id" value="<%=data.getString("film_id")%>"/>
			<input type="submit" name="delete" value="删除该记录"/><tb/>
			</form>
			<form action="<%= request.getContextPath()%>/UpdataServlet" Method="post">
			<input type="hidden" name="film_id" value="<%=data.getString("film_id")%>"/>
			<input id="<%=data.getInt("film_id") %>" type="button" name="updata" value="修改" />
			</form>
			<br/><br/><br/><br/>
			==============================================<br/>
		<%} %>	
		<% 
		} catch (Exception e) {
			 e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		%>
	

</body>
</html>