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
 * Servlet implementation class cmjServlet
 */
@WebServlet("/cmjServlet")
public class cmjServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cmjDAO dao = new cmjDAO();
		List<cmjDTO> list = dao.AllList();
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonAry = new JSONArray();
		PrintWriter out = response.getWriter();
		for(cmjDTO emp : list){
			jsonObj = new JSONObject();
			jsonObj.put("employee_id",emp.getEmployee_id());
			jsonObj.put("firstName",emp.getFirst_name());
			jsonObj.put("lastName",emp.getLast_name());
			jsonObj.put("salary",emp.getSalary());
			jsonAry.add(jsonObj);
		}
		JSONObject reObj = new JSONObject();
		reObj.put("datas",jsonAry);
		out.println(reObj.toString());
	}
}
