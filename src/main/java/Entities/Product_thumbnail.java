package Entities;

public class Product_thumbnail {
	private int thumbnailID;
	private Product product;
	private String thumbnailIMG;
	
	public Product_thumbnail() {
		
	}
	public Product_thumbnail(int thumbnailID, Product product, String thumbnailIMG) {
		this.thumbnailID = thumbnailID;
		this.product = product;
		this.thumbnailIMG = thumbnailIMG;
	}
	public int getThumbnailID() {
		return thumbnailID;
	}
	public void setThumbnailID(int thumbnailID) {
		this.thumbnailID = thumbnailID;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getThumbnailIMG() {
		return thumbnailIMG;
	}
	public void setThumbnailIMG(String thumbnailIMG) {
		this.thumbnailIMG = thumbnailIMG;
	}
	@Override
	public String toString() {
		return "Product_thumbnail [thumbnailID=" + thumbnailID + ", product=" + product + ", thumbnailIMG="
				+ thumbnailIMG + "]";
	}
	
	
	
}
