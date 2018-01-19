<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	int no = Integer.valueOf(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestBookDao dao = new GuestBookDao();
	dao.delete(no, password);
	
	response.sendRedirect("list.jsp");
%>