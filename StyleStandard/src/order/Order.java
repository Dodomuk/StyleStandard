package order;

import java.sql.Date;

import customer.Customer;

public class Order extends Customer{
	
	private int order_code; //주문번호
	private int product_code; //옷고유번호
	private Date rent_date; //대여일자
	private Date rent_return_date; //반납 일자
	private String rent_check; //반납 유무
	private String order_Check; //취소/환불여부
	private int ship_code; //택배사 코드
	private String ship_no; //송장 번호
	private String ship_address; //배송 주소
	private String user_name;
	private String user_phone;
	private String ship_notice;
	private int order_price; //주문 금액
	private String product_name; //주문하는 제품 이름
	private String order_img; //이미지
	

	public String getOrder_img() {
		return order_img;
	}

	public void setOrder_img(String order_img) {
		this.order_img = order_img;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getShip_notice() {
		return ship_notice;
	}

	public void setShip_notice(String ship_notice) {
		this.ship_notice = ship_notice;
	}

	public int getProduct_code() {
		return product_code; 
	}

	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}

	public int getOrder_code() {
		return order_code;
	}

	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}

	public Date getRent_date() {
		return rent_date;
	}

	public void setRent_date(Date rent_date) {
		this.rent_date = rent_date;
	}

	public Date getRent_return_date() {
		return rent_return_date;
	}

	public void setRent_return_date(Date rent_return_date) {
		this.rent_return_date = rent_return_date;
	}

	public String isRent_check() {
		return rent_check;
	}

	public void setRent_check(String rent_check) {
		this.rent_check = rent_check;
	}

	public int getOrder_price() {
		return order_price;
	}

	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}

	public String getOrder_Check() {
		return order_Check;
	}

	public void setOrder_Check(String order_Check) {
		this.order_Check = order_Check;
	}

	public int getShip_code() {
		return ship_code;
	}

	public void setShip_code(int ship_code) {
		this.ship_code = ship_code;
	}

	public String getShip_no() {
		return ship_no;
	}

	public void setShip_no(String ship_no) {
		this.ship_no = ship_no;
	}

	public String getShip_address() {
		return ship_address;
	}

	public void setShip_address(String ship_address) {
		this.ship_address = ship_address;
	}

	@Override
	public String toString() {
		return "Order [order_code=" + order_code + ", product_code=" + product_code + ", rent_date=" + rent_date
				+ ", rent_return_date=" + rent_return_date + ", rent_check=" + rent_check + ", order_Check="
				+ order_Check + ", ship_code=" + ship_code + ", ship_no=" + ship_no + ", ship_address=" + ship_address
				+ ", user_name=" + user_name + ", user_phone=" + user_phone + ", ship_notice=" + ship_notice
				+ ", order_price=" + order_price + ", product_name=" + product_name + ", product_img=" + order_img
				+ "]";
	}



	
}
