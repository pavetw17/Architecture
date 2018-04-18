package BusinessLogic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import Interface.Itbl_banner_Entity;

public class tbl_banner_EntityBean implements Itbl_banner_Entity{
	private DataSource ds;

	public tbl_banner_EntityBean(DataSource ds) {
		super();
		this.ds = ds;
	}

	@SuppressWarnings("resource")
	@Override
	public ArrayList<String> Home_getContentMain_accordingToProduct(int id_home,int limit) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> list = new ArrayList<String>();
		try {
			conn = ds.getConnection();
			pstmt = conn
					.prepareStatement("select content_home from tbl_banner_home where id_home= ? limit 1");
			pstmt.setInt(1, id_home);
			rs = pstmt.executeQuery();
			while(rs.next()){
				list.add(rs.getString("content_home"));
			}
			pstmt = conn
					.prepareStatement("select link_image_thumb,link_image_gallery from tbl_image as A "
							+ " left join tbl_banner_detail as B on A.id_detail = B.id_detail "
							+ " inner join tbl_banner_home as C on B.id_home = C.id_home "
							+ " where C.id_home = ? order by id_image desc limit ? ");
			pstmt.setInt(1, id_home);
			pstmt.setInt(2, limit);
			rs = pstmt.executeQuery();
			while(rs.next()){
				list.add(rs.getString("link_image_thumb") + " --split-- " + rs.getString("link_image_gallery"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			FunctionAll.closeEverything(rs, pstmt, conn);
		}
		return list;
	}

	@SuppressWarnings("resource")
	@Override
	public ArrayList<String> Home_getContent_accordingProductDetail(int id_detail) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> list = new ArrayList<String>();
		
		try {
			conn = ds.getConnection();
			pstmt = conn
					.prepareStatement("select content_detail from tbl_banner_detail where id_detail = ? limit 1");
			pstmt.setInt(1, id_detail);
			rs = pstmt.executeQuery();
			while(rs.next()){
				list.add(rs.getString("content_detail"));
			}
			pstmt = conn
					.prepareStatement("select C.id_home, link_image_thumb,link_image_gallery, B.seo_name_tintuc,  B.id_tintuc,  "
							+ " B.name_tintuc, B.summary_tintuc from tbl_image as A "
							+ " left join tbl_banner_tintuc as B on A.id_tintuc = B.id_tintuc "
							+ " left join tbl_banner_detail as C on B.id_detail = C.id_detail "
							+ " where A.id_detail = ? order by id_image desc limit 12  ");
			pstmt.setInt(1, id_detail);
			rs = pstmt.executeQuery();
			while(rs.next()){
				list.add(rs.getString("id_tintuc") 
						+ " --split-- " + rs.getString("link_image_thumb")
						+ " --split-- " + rs.getString("link_image_gallery") 
						+ " --split-- " + rs.getString("name_tintuc")
						+ " --split-- " + rs.getString("summary_tintuc")
						+ " --split-- " + rs.getString("seo_name_tintuc")
						+ " --split-- " + rs.getString("id_home"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			FunctionAll.closeEverything(rs, pstmt, conn);
		}
		return list;
	}

	
}
