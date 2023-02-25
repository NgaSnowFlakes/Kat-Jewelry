package Entities;

public class Categories {
	private int cateID;
	private String cateName;
	
	
	public Categories() {
		
	}


	public Categories(int cateID, String cateName) {
		
		this.cateID = cateID;
		this.cateName = cateName;
	}


	public int getCateID() {
		return cateID;
	}


	public void setCateID(int cateID) {
		this.cateID = cateID;
	}


	public String getCateName() {
		return cateName;
	}


	public void setCateName(String cateName) {
		this.cateName = cateName;
	}


	@Override
	public String toString() {
		return "Categories [cateID=" + cateID + ", cateName=" + cateName + "]";
	}
	
	
	
}
