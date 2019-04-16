<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.*"%>
<%@page import="employees.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	EmpDAO dao = new EmpDAO();
	List<Map<String,Object>> list = dao.getData();
	JSONArray arr1 = new JSONArray();
	JSONArray arr2 = new JSONArray();
	for(Map<String, Object> map : list){
		map.get("fullName");
		arr1 = new JSONArray();
		arr1.add(map.get("fullName"));
		arr1.add(map.get("position"));
		arr1.add(map.get("office"));
		arr1.add(map.get("extn"));
		arr1.add(map.get("startDate"));
		arr1.add(map.get("salary"));
		arr2.add(arr1);
	}
	JSONObject obj = new JSONObject();
	obj.put("data",arr2);
	out.println(obj.toString());
%>