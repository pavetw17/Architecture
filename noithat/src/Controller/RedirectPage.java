package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RedirectPage")
public class RedirectPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RedirectPage() {
        super();
    }

    protected void XuLy(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && !action.isEmpty()) {
			if (action.equals("trangchu")) {
				request.setAttribute("page", "TrangChu");
				request.getRequestDispatcher("chuyentrang.jsp").forward(
						request, response);
			} else if (action.equals("gioi-thieu")) {
				request.setAttribute("page", "TrangGioiThieu");
				request.getRequestDispatcher("chuyentrang.jsp").forward(
						request, response);
			} else if (action.equals("cong-trinh")) {
				request.setAttribute("page", "TrangCongTrinh");
				request.getRequestDispatcher("chuyentrang.jsp").forward(
						request, response);
			} else if (action.equals("dich-vu")) {
				request.setAttribute("page", "TrangDichVu");
				request.getRequestDispatcher("chuyentrang.jsp").forward(
						request, response);
			} else if (action.equals("tu-van")) {
				request.setAttribute("page", "TrangTuVan");
				request.getRequestDispatcher("chuyentrang.jsp").forward(
						request, response);
			} else if (action.equals("lien-he")) {
				request.setAttribute("page", "TrangLienHe");
				request.getRequestDispatcher("chuyentrang.jsp").forward(
						request, response);
			} else {
				response.sendRedirect("index.jsp");
				
			}
		} else {
			response.sendRedirect("index.jsp");
		}

	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		XuLy(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		XuLy(request, response);
	}

}
