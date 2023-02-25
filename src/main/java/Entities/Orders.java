package Entities;

import java.util.Date;

public class Orders {
	private int orderID;
	private Date orderDate;
	private int customerID;
	private Double totalAmount;
	public Orders() {
		
	}
	public Orders(int orderID, Date orderDate, int customerID, Double totalAmount) {
		super();
		this.orderID = orderID;
		this.orderDate = orderDate;
		this.customerID = customerID;
		this.totalAmount = totalAmount;
	}
	
	public Orders(int customerID, Double totalAmount) {
		super();
		this.customerID = customerID;
		this.totalAmount = totalAmount;
	}
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public Double getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(Double totalAmount) {
		this.totalAmount = totalAmount;
	}
	@Override
	public String toString() {
		return "Orders [orderID=" + orderID + ", orderDate=" + orderDate + ", customerID=" + customerID
				+ ", totalAmount=" + totalAmount + "]";
	}
	
	
	
	
}
