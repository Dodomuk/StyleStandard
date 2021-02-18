package product;

public class Product {

	public Product() {
		
	}

    private int product_code;
    private int product_quantity;
    private int product_price;
    private String product_size;
    private String product_name;
    private String product_img;
    private String product_info;
    private int product_category;
    
    
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public int getProduct_quantity() {
		return product_quantity;
	}
	public void setProduct_quantity(int product_quantity) {
		this.product_quantity = product_quantity;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_size() {
		return product_size;
	}
	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public String getProduct_info() {
		return product_info;
	}
	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}
	public int getProduct_category() {
		return product_category;
	}
	public void setProduct_category(int product_category) {
		this.product_category = product_category;
	}
	
	
	@Override
	public String toString() {
		return "Product [product_code=" + product_code + ", product_quantity=" + product_quantity + ", product_price="
				+ product_price + ", product_size=" + product_size + ", product_name=" + product_name + ", product_img="
				+ product_img + ", product_info=" + product_info + ", product_category=" + product_category + "]";
	}
	
}
