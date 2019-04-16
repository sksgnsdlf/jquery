<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="employees.EmpDAO"%>
<%
	String userId = request.getParameter("user_id");
	String userPw = request.getParameter("user_pw");
	EmpDAO dao = new EmpDAO();
	String retInfo = dao.getUserInfo(userId, userPw);
	out.println("{\"username\":\"" + retInfo + "\"}");
%>