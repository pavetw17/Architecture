package BusinessLogic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import Entity.tbl_banner_tintuc;
import Interface.Itbl_banner_tintuc;

public class tbl_banner_tintucBean implements Itbl_banner_tintuc {
	private DataSource ds;
	
	public tbl_banner_tintucBean(DataSource ds) {
		super();
		this.ds = ds;
	}

	@Override
	public tbl_banner_tintuc TinTuc_GetContent_accordingToID(int id_tintuc) {
		tbl_banner_tintuc tbl_tt = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			pstmt = conn
					.prepareStatement("select name_tintuc, summary_tintuc, content_tintuc, start_post "
							+ "from tbl_banner_tintuc where id_tintuc =? limit 1");
			pstmt.setInt(1, id_tintuc);
			rs = pstmt.executeQuery();
			while(rs.next()){
				tbl_tt = new tbl_banner_tintuc() { 	};
				tbl_tt.setName_tintuc(rs.getString("name_tintuc"));
				tbl_tt.setSummary_tintuc(rs.getString("summary_tintuc"));
				tbl_tt.setContent_tintuc(rs.getString("content_tintuc"));
				tbl_tt.setStart_post(rs.getInt("start_post"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			FunctionAll.closeEverything(rs, pstmt, conn);
		}
		return tbl_tt;
	}

}
