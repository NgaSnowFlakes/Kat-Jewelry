package Entities;

public class Customer {
	private int CustomerID;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private int roleID;
	
	
	public Customer() {
		
	}
	


	public Customer(int customerID, String firstName, String lastName, String email, String password, int roleID) {
		
		CustomerID = customerID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.roleID = roleID;
	}


	public int getCustomerID() {
		return CustomerID;
	}


	public void setCustomerID(int customerID) {
		CustomerID = customerID;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getRoleID() {
		return roleID;
	}


	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}


	@Override
	public String toString() {
		return "Customer [CustomerID=" + CustomerID + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
				+ email + ", password=" + password + ", roleID=" + roleID + "]";
	}
	
	
}
