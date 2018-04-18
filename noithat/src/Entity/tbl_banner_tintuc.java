package Entity;

public abstract class tbl_banner_tintuc {
	private int id_tintuc;
	private String name_tintuc;
	private String content_tintuc;
	private String summary_tintuc;
	private int start_post;
	private int id_detail; // id_architecture, id_interior, id_construction
	private String seo_name_tintuc;
	
	public int getId_tintuc() {
		return id_tintuc;
	}
	public void setId_tintuc(int id_tintuc) {
		this.id_tintuc = id_tintuc;
	}
	public String getName_tintuc() {
		return name_tintuc;
	}
	public void setName_tintuc(String name_tintuc) {
		this.name_tintuc = name_tintuc;
	}
	public String getContent_tintuc() {
		return content_tintuc;
	}
	public void setContent_tintuc(String content_tintuc) {
		this.content_tintuc = content_tintuc;
	}
	public String getSummary_tintuc() {
		return summary_tintuc;
	}
	public void setSummary_tintuc(String summary_tintuc) {
		this.summary_tintuc = summary_tintuc;
	}
	public int getStart_post() {
		return start_post;
	}
	public void setStart_post(int start_post) {
		this.start_post = start_post;
	}
	public int getId_detail() {
		return id_detail;
	}
	public void setId_detail(int id_detail) {
		this.id_detail = id_detail;
	}
	
	public String getSeo_name_tintuc() {
		return seo_name_tintuc;
	}
	public void setSeo_name_tintuc(String seo_name_tintuc) {
		this.seo_name_tintuc = seo_name_tintuc;
	}
	
	public tbl_banner_tintuc(int id_tintuc, String name_tintuc,
			String content_tintuc, String summary_tintuc, int start_post,
			int id_detail, String seo_name_tintuc) {
		super();
		this.id_tintuc = id_tintuc;
		this.name_tintuc = name_tintuc;
		this.content_tintuc = content_tintuc;
		this.summary_tintuc = summary_tintuc;
		this.start_post = start_post;
		this.id_detail = id_detail;
		this.seo_name_tintuc = seo_name_tintuc;
	}
	
	public tbl_banner_tintuc() {
		super();
	}
	
	
}
