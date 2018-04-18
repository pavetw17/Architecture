package Controller_QuanLy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.tbl_admin;

@WebServlet("/showMenu")
public class showMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public showMenu() {
        super();
    }

    protected void xuly(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	tbl_admin tbl_qt = (tbl_admin) request.getSession().getAttribute("tbl_qt");
		if (tbl_qt != null) { 
	    	String action = request.getParameter("action");
	    	if (action.equals("home")) {
				request.setAttribute("page", "QuanLy_trangHome");
				request.getRequestDispatcher("chuyentrang.jsp").forward(
						request, response);
			} else if (action.equals("content")) {
				request.setAttribute("page", "QuanLy_trangContent");
				request.getRequestDispatcher("chuyentrang.jsp").forward(
						request, response);
			}
		}else { //khong phai quanly
			response.sendRedirect("admin/index.jsp");
		}
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		xuly(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		xuly(request, response);
	}

}
