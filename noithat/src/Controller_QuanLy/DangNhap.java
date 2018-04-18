package Controller_QuanLy;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import BusinessLogic.tbl_adminBean;
import Entity.tbl_admin;
import Interface.Itbl_admin;

@WebServlet("/DangNhap")
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Resource(name = "NoiThatDB")
	private DataSource ds;
	
    public DangNhap() {
        super();
    }
    
    protected void xuly(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("txt_username").trim();
		String password = request.getParameter("txt_password").trim();
		Itbl_admin Itbl_ad = new tbl_adminBean(ds);
		tbl_admin tbl_ad = Itbl_ad.dangNhap(username, password);
		HttpSession session = request.getSession();
		if (tbl_ad != null) {
			session.setAttribute("tbl_qt",tbl_ad);
			response.sendRedirect("showTrangChu");
		} else {
			response.sendRedirect("./admin/index.jsp?kq=error");
		}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		xuly(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		xuly(request, response);
	}

}
