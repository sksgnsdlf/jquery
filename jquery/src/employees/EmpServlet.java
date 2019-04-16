package employees;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 * Servlet implementation class EmpServlet
 */
@WebServlet("/EmpServlet")
public class EmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmpServlet() {
		super();
	}

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		String action = request.getParameter("action");

		if (action == null) {

		} else if (action.equals("del")) {
			String empid = request.getParameter("employeeid");
			System.out.println(empid);
			EmpDAO dao = new EmpDAO();
			String returnStr = dao.delEmployee(empid);
			System.out.println(returnStr);
			response.getWriter().println(returnStr);

		} else if (action.equals("list")) {
			List<Employee> list = new ArrayList<Employee>();
			JSONObject jsonObj = null;
			JSONArray jsonAry = new JSONArray();

			EmpDAO dao = new EmpDAO();
			list = dao.getEmplsList();
			for (Employee emp : list) {
				jsonObj = new JSONObject();
				jsonObj.put("employeeid", emp.getEmployeeId());
				jsonObj.put("firstName", emp.getFirstName());
				jsonObj.put("salary", emp.getSalary());
				jsonAry.add(jsonObj);
			}
			JSONObject json = new JSONObject();
			json.put("datas", jsonAry);
			PrintWriter pw = response.getWriter();
			pw.println(json.toString());
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
