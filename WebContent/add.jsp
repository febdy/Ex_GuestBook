<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	request.setCharacterEncoding("UTF-8");

	GuestBookDao dao = new GuestBookDao();
	GuestVo vo;
	
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");
	
	vo = new GuestVo(1, name, password, content, "");
	
	dao.insert(vo);

	response.sendRedirect("list.jsp");
%>