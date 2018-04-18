package Controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import BusinessLogic.tbl_banner_tintucBean;
import Entity.tbl_banner_tintuc;
import Interface.Itbl_banner_tintuc;

@WebServlet("/TinTuc_XemNoiDung")
public class TinTuc_XemNoiDung extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "NoiThatDB")
	private DataSource ds;

	public TinTuc_XemNoiDung() {
		super();
	}

	protected void xuly(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String id_tintuc = request.getParameter("id_tintuc");
		if (id_tintuc != null && !id_tintuc.isEmpty() )  {
			if(id_tintuc.matches("-?\\d+(\\.\\d+)?")) { //kiem tra xem co phai la so khong
				/*  System.out.print(String.valueOf(id_tintuc).length());  */
				
				if(String.valueOf(id_tintuc).length() <= 5) { //kiem tra id_tin_tuc co phai 5 so khong
    				Itbl_banner_tintuc Itbl_tt = new tbl_banner_tintucBean(ds);
    				tbl_banner_tintuc tbl_tt = Itbl_tt.TinTuc_GetContent_accordingToID(Integer.parseInt(id_tintuc));
    				if(tbl_tt != null){
    					response.setContentType("text/html;charset=UTF-8");
    					request.setCharacterEncoding("UTF-8");
    					response.setCharacterEncoding("UTF-8");
    					request.setAttribute("tintuc", tbl_tt);
    					request.setAttribute("page", "TinTuc_TrangXemNoiDung");
    					request.getRequestDispatcher("chuyentrang.jsp").forward(request, response);
    				} else {  //khong co id_tintuc theo query
    					response.sendRedirect(request.getContextPath());
    				} 
				} else {  //id tin tuc vuot qua 5 so
					response.sendRedirect(request.getContextPath());
				}
			} else {  //id_tintuc khong phai la so
				response.sendRedirect(request.getContextPath());
			}
		} 
    }

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		xuly(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		xuly(request, response);
	}

}
