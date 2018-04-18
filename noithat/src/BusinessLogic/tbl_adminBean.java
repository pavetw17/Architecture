package BusinessLogic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import Entity.tbl_admin;
import Interface.Itbl_admin;

public class tbl_adminBean implements Itbl_admin {
	private DataSource ds;

	public tbl_adminBean(DataSource ds) {
		super();
		this.ds = ds;
	}

	@Override
	public tbl_admin dangNhap(String username, String password) {
		tbl_admin tbl_qt = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			try {
				conn = ds.getConnection();
				pstmt = conn
						.prepareStatement("select id_admin, user_admin "
								+ " from tbl_admin where user_admin =? and pass_admin=? limit 1");
				pstmt.setString(1, username);
				pstmt.setString(2, password);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					tbl_qt = new tbl_admin();
					tbl_qt.setId_admin(rs.getInt("id_admin"));
					tbl_qt.setUser_admin(rs.getString("user_admin"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} finally {
			FunctionAll.closeEverything( pstmt , conn);
		}
		return tbl_qt;
	}

}
