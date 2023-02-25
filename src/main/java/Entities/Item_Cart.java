package Entities;


public class Item_Cart{
	private int itemID;
	private Product product;
	private int quantity;
	private int customerID; //Add more for cart using database
	
	
	public Item_Cart() {
		super();
	}
	




	public Item_Cart(int itemID, Product product, int quantity) {
		super();
		this.itemID = itemID;
		this.product = product;
		this.quantity = quantity;
	}


	public int getItemID() {
		return itemID;
	}


	public void setItemID(int itemID) {
		this.itemID = itemID;
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


	
// This one is for cart database
	public Item_Cart(int itemID, Product product, int quantity, int customerID) {
		this.itemID = itemID;
		this.product = product;
		this.quantity = quantity;
		this.customerID = customerID;
		}

	public int getCustomerID() {
		return customerID;
	}


	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	
	
	
}
