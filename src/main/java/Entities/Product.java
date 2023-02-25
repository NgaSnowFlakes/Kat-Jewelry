package Entities;

public class Product {
	private int pID;
	private String pName;
	private String pDesc;
	private Double pPrice;
	private String pImage;
	private int pStock;
	private int cateID;
	
	
	public Product() {
		
	}


	public Product(int pID, String pName, String pDesc, Double pPrice, String pImage, int pStock, int cateID) {
		
		this.pID = pID;
		this.pName = pName;
		this.pDesc = pDesc;
		this.pPrice = pPrice;
		this.pImage = pImage;
		this.pStock = pStock;
		this.cateID = cateID;
	}


	public int getpID() {
		return pID;
	}


	public void setpID(int pID) {
		this.pID = pID;
	}


	public String getpName() {
		return pName;
	}


	public void setpName(String pName) {
		this.pName = pName;
	}


	public String getpDesc() {
		return pDesc;
	}


	public void setpDesc(String pDesc) {
		this.pDesc = pDesc;
	}


	public Double getpPrice() {
		return pPrice;
	}


	public void setpPrice(Double pPrice) {
		this.pPrice = pPrice;
	}


	public String getpImage() {
		return pImage;
	}


	public void setpImage(String pImage) {
		this.pImage = pImage;
	}


	public int getpStock() {
		return pStock;
	}


	public void setpStock(int pStock) {
		this.pStock = pStock;
	}


	public int getCateID() {
		return cateID;
	}


	public void setCateID(int cateID) {
		this.cateID = cateID;
	}


	@Override
	public String toString() {
		return "Product [pID=" + pID + ", pName=" + pName + ", pDesc=" + pDesc + ", pPrice=" + pPrice + ", pImage="
				+ pImage + ", pStock=" + pStock + ", cateID=" + cateID + "]";
	}
	
	
	
}
