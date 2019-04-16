package employees;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class cmjDAO {

	PreparedStatement pstmt = null;
	
	public List<cmjDTO> AllList() {
		Connection conn = DbCon.connect();
		List<cmjDTO> list = new ArrayList<>();
		cmjDTO emp;
		String sql = "select * from emp_temp order by employee_id asc";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				emp = new cmjDTO();
				emp.setEmployee_id(rs.getString("employee_id"));
				emp.setFirst_name(rs.getString("first_name"));
				emp.setLast_name(rs.getString("last_name"));
				emp.setSalary(rs.getString("salary"));
				list.add(emp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public String delEmployee(String id) {
		String rr = null;
		Connection conn = DbCon.connect();
		try {
			pstmt = conn.prepareStatement("delete from emp_temp where employee_id = " + id);
			int r = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}return rr;
	}
}
