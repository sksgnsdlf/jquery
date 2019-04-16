<%@page import="net.sf.json.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="employees.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	EmpDAO dao = new EmpDAO();
	List<String> list= new ArrayList<>();
	list = dao.getEmailList();
	
	out.println(JSONArray.fromObject(list).toString());
%>