package Entities;

public class OrderDetail {
	private int orderDetailID;
	private int orderID;
	private Product product;
	private int quantity;
	private double price;
	public OrderDetail() {
		
	}
	public OrderDetail(int orderID, Product product, int quantity, double price) {	
		this.orderID = orderID;
		this.product = product;
		this.price = price;
	}
	public OrderDetail(int orderDetailID, int orderID, Product product, int quantity, double price) {
		this.orderDetailID = orderDetailID;
		this.orderID = orderID;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
	}
	
	
	
	
	public int getOrderDetailID() {
		return orderDetailID;
	}
	public void setOrderDetailID(int orderDetailID) {
		this.orderDetailID = orderDetailID;
	}
	
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "OrderDetail [orderDetailID=" + orderDetailID + ", orderID=" + orderID + ", product=" + product
				+ ", quantity=" + quantity + ", price=" + price + "]";
	}
	
	
	
}
