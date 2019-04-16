<%@page import="employees.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String a = request.getParameter("full_name");
	String b = request.getParameter("position");
	String c = request.getParameter("office");
	String d = request.getParameter("extn");
	String e = request.getParameter("start_date");
	String f = request.getParameter("salary");
	EmpDAO dao = new EmpDAO();
	dao.insertSample(a,b,c,d,e,f);
%>