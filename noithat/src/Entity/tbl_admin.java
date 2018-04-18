package Entity;

public class tbl_admin {
	private String user_admin;
	private String pass_admin;
	private String email_admin;
	private int id_admin;
	private String pass_email_send_pass;
	public String getUser_admin() {
		return user_admin;
	}
	public void setUser_admin(String user_admin) {
		this.user_admin = user_admin;
	}
	public String getPass_admin() {
		return pass_admin;
	}
	public void setPass_admin(String pass_admin) {
		this.pass_admin = pass_admin;
	}
	public String getEmail_admin() {
		return email_admin;
	}
	public void setEmail_admin(String email_admin) {
		this.email_admin = email_admin;
	}
	public int getId_admin() {
		return id_admin;
	}
	public void setId_admin(int id_admin) {
		this.id_admin = id_admin;
	}
	public String getPass_email_send_pass() {
		return pass_email_send_pass;
	}
	public void setPass_email_send_pass(String pass_email_send_pass) {
		this.pass_email_send_pass = pass_email_send_pass;
	}
	public tbl_admin(String user_admin, String pass_admin, String email_admin,
			int id_admin, String pass_email_send_pass) {
		super();
		this.user_admin = user_admin;
		this.pass_admin = pass_admin;
		this.email_admin = email_admin;
		this.id_admin = id_admin;
		this.pass_email_send_pass = pass_email_send_pass;
	}
	public tbl_admin() {
		super();
	}
	
}
