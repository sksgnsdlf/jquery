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
 * Servlet implementation class cmjDelServlet
 */
@WebServlet("/cmjDelServlet")
public class cmjDelServlet extends HttpServlet {

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		String action = request.getParameter("action");

		if (action == null) {

		} else if (action.equals("del")) {
			String empid = request.getParameter("employee_id");
			cmjDAO dao = new cmjDAO();
			String returnStr = dao.delEmployee(empid);
			response.getWriter().println(returnStr);

		} else if (action.equals("list")) {
			List<cmjDTO> list = new ArrayList<cmjDTO>();
			JSONObject jsonObj = null;
			JSONArray jsonAry = new JSONArray();

			cmjDAO dao = new cmjDAO();
			list = dao.AllList();
			for (cmjDTO emp : list) {
				jsonObj = new JSONObject();
				jsonObj.put("employeeid", emp.getEmployee_id());
				jsonObj.put("firstName", emp.getFirst_name());
				jsonObj.put("firstName", emp.getLast_name());
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