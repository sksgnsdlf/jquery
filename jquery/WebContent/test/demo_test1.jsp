<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="employees.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="employees.EmpDAO" %>
<% 
	EmpDAO dao = new EmpDAO();
	List<Employee> list = dao.getEmplsList();
	JSONObject jsonObj = new JSONObject();
	JSONArray jsonAry = new JSONArray();
	for(Employee emp : list){
		jsonObj = new JSONObject();
		jsonObj.put("firstName",emp.getFirstName());
		jsonObj.put("lastName",emp.getLastName());
		jsonObj.put("salary",emp.getSalary());
		jsonAry.add(jsonObj);
	}
	JSONObject reObj = new JSONObject();
	reObj.put("datas",jsonAry);
	out.println(reObj.toString());
	
	
/* 	EmpDAO dao = new EmpDAO();
	List<Employee> list = dao.getEmplsList();
	out.println("{\"datas\":[");
	int i = 0;
	for(Employee emp : list){
		i++;
		out.println("{\"firstName\":\""+emp.getFirstName()+"\",\"lastName\":\""+emp.getLastName()+
			"\",\"age\":\""+emp.getSalary()+"\"}");
		if(i != list.size()) //마지막배열에 있는 ,를 제거함
			out.println(",");
	}
	out.println("]}"); */
	 
 /* 	out.println("{\"firstName\":\"rrr\",\"lastName\":\"zzz\",\"age\":\"30\"},");
	out.println("{\"firstName\":\"eee\",\"lastName\":\"xxx\",\"age\":\"40\"},");
	out.println("{\"firstName\":\"www\",\"lastName\":\"ccc\",\"age\":\"50\"},");
	out.println("{\"firstName\":\"qqq\",\"lastName\":\"vvv\",\"age\":\"60\"},");
	out.println("{\"firstName\":\"aaa\",\"lastName\":\"bbb\",\"age\":\"70\"}]}");  */
%>