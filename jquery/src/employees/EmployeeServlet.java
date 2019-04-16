package employees;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmpDAO dao = new EmpDAO();
		List<Employee> list = dao.getEmplsList();
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonAry = new JSONArray();
		PrintWriter out = response.getWriter();
		for(Employee emp : list){
			jsonObj = new JSONObject();
			jsonObj.put("id",emp.getEmployeeId());
			jsonObj.put("firstName",emp.getFirstName());
			jsonObj.put("lastName",emp.getLastName());
			jsonObj.put("salary",emp.getSalary());
			jsonAry.add(jsonObj);
		}
		JSONObject reObj = new JSONObject();
		reObj.put("datas",jsonAry);
		out.println(reObj.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
