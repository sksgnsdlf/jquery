package employees;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	PreparedStatement pstmt = null;

	public String UserInfo(String id, String pw) {
		Connection conn = DbCon.connect();
		String sql = "select * from member where userid= ? and userpw = ?";
		String returnInfo = "";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			ResultSet rs = pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return returnInfo;
	}

	public List<MemberDto> memberList() {
		Connection conn = DbCon.connect();
		List<MemberDto> list = new ArrayList<>();
		MemberDto member;
		String sql = "select * from member order by userid desc";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				member = new MemberDto();
				member.setUserid(rs.getString("userid"));
				member.setUserpw(rs.getString("userpw"));
				member.setUsername(rs.getString("username"));
				list.add(member);
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
}
