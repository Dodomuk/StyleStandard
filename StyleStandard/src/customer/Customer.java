package customer;

public class Customer {

	private String user_id;
	private String authority_cd;
	private String user_pw;
    private String name;
    private String sex;
    private String email;
    private String phone;
    private String zipcode;
    private String address1;
    private String address2;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getAuthority_cd() {
		return authority_cd;
	}
	public void setAuthority_cd(String authority_cd) {
		this.authority_cd = authority_cd;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	
	
	@Override
	public String toString() {
		return "Customer [user_id=" + user_id + ", authority_cd=" + authority_cd + ", user_pw=" + user_pw + ", name="
				+ name + ", sex=" + sex + ", email=" + email + ", phone=" + phone + ", zipcode=" + zipcode
				+ ", address1=" + address1 + ", address2=" + address2 + "]";
	}
	
}
