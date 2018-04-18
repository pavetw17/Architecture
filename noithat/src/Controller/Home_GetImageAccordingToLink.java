package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import BusinessLogic.tbl_banner_EntityBean;
import Interface.Itbl_banner_Entity;

@WebServlet("/Home_GetImageAccordingToLink")
public class Home_GetImageAccordingToLink extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "NoiThatDB")
	private DataSource ds;

	public Home_GetImageAccordingToLink() {
		super();

	}

	protected void xuly(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String txt_link = request.getParameter("txt_link");
		
		String[] arr_id_detail = txt_link.split("_"); // van-phong_1
		String chuyen_muc = arr_id_detail[0];
		int id_detail =  Integer.parseInt(arr_id_detail[1]);
		
		Itbl_banner_Entity Itbl_Entity = new tbl_banner_EntityBean(ds);
		ArrayList<String> list = Itbl_Entity.Home_getContent_accordingProductDetail(id_detail);
		
		
		PrintWriter out = response.getWriter();
		StringBuffer str = new StringBuffer();
		str.append( list.get(0) + "ChiaDoi");  //list.get(0) : content

		String data = "<script type='text/javascript'>";
		data += "$(document).ready(function() {";
		data += "$('.fancybox')";
		data += ".attr('rel', 'gallery') ";
		data += " .fancybox({ ";
		data += " beforeLoad: function() { ";
		data += "   var el, id = $(this.element).data('title-id'); ";

		data += " if (id) { ";
		data += "      el = $('#' + id); ";

		data += "   if (el.length) { ";
		data += "         this.title = el.html(); ";
		data += "       } ";
		data += "    } ";
		data += "  } ";
		data += "  }); ";
		data += "});</script>";

		out.print(data.toString());

		str.append("<ul class='polaroids'>");
		for (int i = 1; i < list.size(); i++) {
			String[] arr = list.get(i).split(" --split-- ");
			/*System.out.println(arr[0]);  //id_tintuc
			System.out.println(arr[1]);  //link_thumb
			System.out.println(arr[2]);  //linl_gallery
			System.out.println(arr[3]);  //name_tintuc
			System.out.println(arr[4]);  //summary_tintuc
			System.out.println(arr[5]);  //seo_name_tintuc
			System.out.println(arr[6]);  //id_home
			
			*/
			if(Integer.parseInt(arr[6]) == 1){ //kien truc
			str.append("   <li>	<a class='fancybox' data-title-id='title-"+ arr[0] +"' data-fancybox-group='gallery' href='"+ arr[2] +"' title='" + arr[3] + "'>"
					+ "  <img src='" + arr[2] + "' alt='Roeland!'/>"
					+ "		</a>   "
					+ "<div id='title-"+ arr[0] +"' class='hidden'>" + arr[4] + "<a href='" +  request.getContextPath() + "/kien-truc/"+ chuyen_muc +"/"+ arr[5] + "/" + arr[0] + "'> Read more... </a></div>"
					+ "</li>");
			}else if(Integer.parseInt(arr[6]) == 2){ //noi that
				str.append("   <li>	<a class='fancybox' data-title-id='title-"+ arr[0] +"' data-fancybox-group='gallery' href='"+ arr[2] +"' title='" + arr[3] + "'>"
						+ "  <img src='" + arr[2] + "' alt='Roeland!'/>"
						+ "		</a>   "
						+ "<div id='title-"+ arr[0] +"' class='hidden'>" + arr[4] + "<a href='" +  request.getContextPath() + "/noi-that/"+ chuyen_muc +"/"+ arr[5] + "/" + arr[0] + "'> Read more... </a></div>"
						+ "</li>");
			}else if(Integer.parseInt(arr[6]) == 3){ //thi cong
				str.append("   <li>	<a class='fancybox' data-title-id='title-"+ arr[0] +"' data-fancybox-group='gallery' href='"+ arr[2] +"' title='" + arr[3] + "'>"
						+ "  <img src='" + arr[2] + "' alt='Roeland!'/>"
						+ "		</a>   "
						+ "<div id='title-"+ arr[0] +"' class='hidden'>" + arr[4] + "<a href='" +  request.getContextPath() + "/thi-cong/"+ chuyen_muc +"/"+ arr[5] + "/" + arr[0] + "'> Read more... </a></div>"
						+ "</li>");
			}  
		}
		str.append("</ul>"); 

		out.print(str.toString());
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
