package Controller_QuanLy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/showMucTheoMenu")
public class showMucTheoMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public showMucTheoMenu() {
        super();
    }

    protected void xuly(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String action = request.getParameter("action");
    	if (action.equals("nhapsanpham")) {
			request.setAttribute("page", "QuanLy_trangNhapSanPham");
			request.getRequestDispatcher("chuyentrang.jsp").forward(
					request, response);
		}else if (action.equals("quanlysanpham")) {
				request.setAttribute("page", "QuanLy_trangQuanLySanPham");
				request.getRequestDispatcher("chuyentrang.jsp").forward(
						request, response);
		}
		
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		xuly(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		xuly(request, response);
	}

}
