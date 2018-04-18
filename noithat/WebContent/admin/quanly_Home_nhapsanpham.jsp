<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <c:if test="${empty sessionScope.tbl_qt.user_admin}">
 	<jsp:forward page="../../403.jsp"></jsp:forward>
 </c:if>   --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<title>Nhập Sản Phẩm</title>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery-1.10.2.js'></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
  tinymce.init({
    	// General options
	 	//mode : "textareas",
	 	mode: "exact",
	 	elements:"div_text",
	 	theme : "advanced",
		plugins : "imagemanager,filemanager,autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave,visualblocks",

		// Theme options
		theme_advanced_buttons1 : "bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
		theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code",
		theme_advanced_buttons3 : "insertdate,inserttime,preview,|,forecolor,backcolor,tablecontrols",
		
    	theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		theme_advanced_resizing: false,

		// Style formats
		style_formats : [
			{title : 'Bold text', inline : 'b'},
			{title : 'Red text', inline : 'span', styles : {color : '#ff0000'}},
			{title : 'Red header', block : 'h1', styles : {color : '#ff0000'}},
			{title : 'Table styles'},
			{title : 'Table row 1', selector : 'tr', classes : 'tablerow1'}
		],
		height : "500",  
		width: "800",
		 setup : function(ed)
         {
             // set the editor font size
             ed.onInit.add(function(ed)
             {
             ed.getBody().style.fontSize = '13px';
             });
         },
		
		
  });

	    $(document).on('submit', '#bangnhap', function(e) { 
	
	 		    var valid = true, errorMessage="";
				var fileName = $('#txt_hinhanh').val();
				
				if(fileName !== ''){
					if(!validate_fileupload(fileName)){
		 		    	errorMessage += "Invalid image file\n\nYou may only upload files with the following extensions: JPG, PNG, GIF ";
		 		    	valid = false;
					}
				}
	 		    
				if ($('#txt_tomtat').val().length == 0  || $('#txt_tomtat').val().length < 200 || $('#txt_tomtat').val().length > 300 ) {//lay id
					errorMessage += "The summary must be greater than 200 and not exceed 300 characters.\n";
					valid = false;
				}
		
				if ($('#txt_tenbai').val() === '' || $('#txt_tenbai').val().length > 100) {//lay id
					errorMessage += "The title must be less than 100 characters.\n";
					valid = false;
				}
		
				if ($('#div_text').val() === '' || $('#div_text').val().length < 200) {//lay id
					errorMessage += "The content must be greater than 200 characters.\n";
					valid = false;
				}
				
				if (!valid && errorMessage.length > 0) {
					alert(errorMessage);
					e.preventDefault(); //the default action of the event will not be triggered.
				}
				
		 }); 

	function validate_fileupload(fileName)
	{
	    var allowed_extensions = new Array("jpg","png","gif","jpeg");
	    var file_extension = fileName.split('.').pop().toLowerCase(); // split function will split the filename by dot(.), and pop function will pop the last element from the array which will give you the extension as well. If there will be no extension then it will return the filename.

	    for(var i = 0; i <= allowed_extensions.length; i++)
	    {
	        if(allowed_extensions[i]==file_extension)
	        {
	            return true; // valid file extension
	        }
	    }
	    return false;
	}
</script>


 <!-- CONTENT TITLE -->
	    <div class="grid_9">
	    		<h1 class="content_edit">Nhập sản phẩm</h1>
	    </div>
 <!--   CONTENT TITLE RIGHT BOX -->
     <div class="grid_15">
	    
	    <form action="Highlights_ThemTin"  id="bangnhap" method="POST" enctype="multipart/form-data">

			<table style="width: 100%;">
				<tr style="height: 40px">
						<td width="17%" align="right">Thể loại:</td>
						<td width="1%">&nbsp;</td>
						<td width="83%">
							<input type="radio" value="1" checked id="txt_theloai" name="txt_theloai" style="width: 24; height: 24;"> Kiến trúc
							<input type="radio" name="txt_theloai" value="2" id="txt_theloai" style=" width: 24; height: 24; margin-left: 40px;"> Nội thất 
							<input type="radio" name="txt_theloai" value="3" id="txt_theloai" style=" width: 24; height: 24; margin-left: 40px;"> Thi công
						</td>
				</tr>
				<tr style="height: 40px">
						<td width="17%" align="right">Loại tin:</td>
						<td width="1%">&nbsp;</td>
						<td width="83%">
							  <select
								id="txt_foldername_select" name="txt_foldername_select" style="width: 200px; height: 24;">
								<option value="0">--Your Album--</option>
								<c:forEach var="thumuc" items="${requestScope.list_thumuc}">
										<option value="${thumuc.id_thumuc}">${thumuc.ten_thumuc}</option>
								</c:forEach>
							  </select>
						</td>
				</tr>
				<tr>
			                <td width="17%" >
			                    <p align="right">Tên sản phẩm:</td>
			                <td width="1%"  align="center">
			                    <font color="#FF0000">*</font></td>
			                <td width="83%" >
			               <textarea id="txt_tenbai" name="txt_tenbai" style=" width: 400px;  " ></textarea>
			    </tr>
			    <tr>
			                <td width="17%" >
			                    <p align="right">Tóm tắt:</td>
			                <td width="1%"  align="center">
			                    <font color="#FF0000"></font></td>
			                <td width="83%" >
			                 <textarea id="txt_tomtat"  name="txt_tomtat" style=" width: 400px;  " ></textarea>
			                 </td>
			    </tr>
			     <tr>	  
			                <td width="17%"  align="right">Ảnh đại diện:</td>
			                <td width="1%"  align="right"><font color="#FF0000"></font></td>
			                <td width="83%" >
			                    <INPUT TYPE="file" NAME="txt_hinhanh" id="txt_hinhanh" CLASS="textbox" size="20"  accept="image/x-png, image/gif, image/jpeg" ></td>
			     </tr>
			    <tr>	  
			                <td width="17%"  align="right">Từ khóa:</td>
			                <td width="1%"  align="right"><font color="#FF0000"></font></td>
			                <td width="83%" >
			                    <INPUT TYPE="file" NAME="txt_hinhanh" id="txt_hinhanh" CLASS="textbox" size="20"  accept="image/x-png, image/gif, image/jpeg" ></td>
			     </tr>
			</table>
			<br>
				<textarea name="div_text" id="div_text" cols="40" rows="20" > </textarea>
				<br>
				<input type="submit" name="btn_ghiCSDL" value="Save" id="btn_ghiCSDL"
										class="button1"   style="font-size: 12pt; width: 105px; margin-right: 190px; "/>
				
				<input type="button" onclick="history.back();"	 name="btn_quaylai" value="Cancel" id="btn_quaylai"
										class="button1"   style="font-size: 12pt; width: 105px "/>
			</form>
	 </div> 
