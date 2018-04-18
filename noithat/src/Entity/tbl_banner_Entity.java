package Entity;

public abstract class tbl_banner_Entity {
	private int id_detail;
	private int id_home;
	private String name_detail;
	private String content_detail;
	private String seo_name_detail;

	public int getId_detail() {
		return id_detail;
	}

	public void setId_detail(int id_detail) {
		this.id_detail = id_detail;
	}

	public int getId_home() {
		return id_home;
	}

	public void setId_home(int id_home) {
		this.id_home = id_home;
	}

	public String getName_detail() {
		return name_detail;
	}

	public void setName_detail(String name_detail) {
		this.name_detail = name_detail;
	}

	public String getContent_detail() {
		return content_detail;
	}

	public void setContent_detail(String content_detail) {
		this.content_detail = content_detail;
	}

	public String getSeo_name_detail() {
		return seo_name_detail;
	}

	public void setSeo_name_detail(String seo_name_detail) {
		this.seo_name_detail = seo_name_detail;
	}

	public tbl_banner_Entity(int id_detail, int id_home, String name_detail,
			String content_detail, String seo_name_detail) {
		super();
		this.id_detail = id_detail;
		this.id_home = id_home;
		this.name_detail = name_detail;
		this.content_detail = content_detail;
		this.seo_name_detail = seo_name_detail;
	}

	public tbl_banner_Entity() {
		super();
	}
	
}
