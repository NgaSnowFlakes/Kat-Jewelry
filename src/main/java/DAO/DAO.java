package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import Entities.Categories;
import Entities.Customer;
import Entities.Item_Cart;
import Entities.OrderDetail;
import Entities.Orders;
import Entities.Product;
import Entities.Product_thumbnail;
import JDBCUtils.XJDBCHelper;


public class DAO {
	Connection conn = null;
	PreparedStatement prsm = null;
	ResultSet rs = null;
	
	
	// Get all the products from database
	public List<Product> getAllProducts(){
		List<Product> list = new ArrayList<>();
		String sql = "select * from Products";
		try {
			conn = new XJDBCHelper().getConnection();
			prsm = conn.prepareStatement(sql);
			rs= prsm.executeQuery();
			while(rs.next()) {
				list.add(new Product(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDouble(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getInt(7)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
//	Get Product by ID
	public Product getProductById(String id){
		String sql = "select * from Products where ProductID =?";
		try {
			conn = new XJDBCHelper().getConnection();
			prsm = conn.prepareStatement(sql);
			prsm.setString(1, id);
			rs= prsm.executeQuery();
			while(rs.next()) {
				return new Product(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDouble(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getInt(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
//	Get all the categories from the database
	public List<Categories> getAllCategories(){
		List<Categories> list = new ArrayList<>();
		String sql = "select * from Categories";
		try {
			conn = new XJDBCHelper().getConnection();
			prsm = conn.prepareStatement(sql);
			rs= prsm.executeQuery();
			while(rs.next()) {
				list.add(new Categories(rs.getInt(1),
						rs.getString(2)));
							
			}
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	
	
// Get Product by Categories
	public List<Product> getProductByCategory(String cateID){
		List<Product> list = new ArrayList<>();
		String sql = "select * from Products where CategoryID =?";
		try {
			conn = new XJDBCHelper().getConnection();
			prsm = conn.prepareStatement(sql);
			prsm.setString(1, cateID);
			rs = prsm.executeQuery();
			while(rs.next()) {
				list.add(new Product(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDouble(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getInt(7)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
// Register account to the Customer table - database
	public void signUp(String firstname, String lastname, String email, String password) {
		String sql= "INSERT INTO Customers (FirstName, LastName, Email, Password, RoleID)"
				+ " values(?, ?, ?, ?, 2)";	
		try {
			conn = new XJDBCHelper().getConnection();
			prsm = conn.prepareStatement(sql);
			prsm.setString(1, firstname);
			prsm.setString(2, lastname);
			prsm.setString(3, email);
			prsm.setString(4, password);
			int result = prsm.executeUpdate();
			if(result>0) {
				System.out.println("Insert thành công");
			}else {
				System.out.println("Thất bại");
			}
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

//	Check user existence before insert:
	public boolean checkExist(String email) {
		boolean exist = false;
		String sql = "select * from Customers where email = ?";
		try {
			conn = new XJDBCHelper().getConnection();
			prsm = conn.prepareStatement(sql);
			prsm.setString(1, email);
			rs = prsm.executeQuery();
			while(rs.next()) {
				exist = true;
				break;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return exist;
	}
	
// Get account correct
	public Customer getCustomer(String email, String password) {
		Customer customer = null;
		String sql = "select * from Customers where [Email] = ? and [Password] = ?";
		try {
			conn = new XJDBCHelper().getConnection();
			prsm = conn.prepareStatement(sql);
			prsm.setString(1, email);
			prsm.setString(2, password);
			rs = prsm.executeQuery();
			while(rs.next()) {
				return new Customer(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6));
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return customer;
	}
	
	
// Insert into Temporary cart
	public void insertCart(int customerID, int productID, int productCount) {
		if(checkCart(customerID, productID)) {
			updateCart(customerID, productID, productCount, "inc");
			return;
		}else {
			String sql = "insert into Cart values(?, ?, ?)";
			
			try {
				conn= new XJDBCHelper().getConnection();
				prsm= conn.prepareStatement(sql);
				prsm.setInt(1, customerID);
				prsm.setInt(2, productID);
				prsm.setInt(3, productCount);
				prsm.execute();
				return;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	public boolean checkCart(int customerID, int productID) {
		String sql = "select * from Cart where customerID =? and productID =?";
		boolean check = false;
			try {
				conn= new XJDBCHelper().getConnection();
				
				prsm = conn.prepareStatement(sql);
				prsm.setInt(1, customerID);
				prsm.setInt(2, productID);
				rs= prsm.executeQuery();
				while(rs.next()) {
					check = true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return check;
	}
	public void updateCart(int customerID, int productID, int productCount,String action) {
		String sql = "";
		if(action.equals("inc")){
			sql = "update Cart set productCount = productCount + 1 where customerID = ? and productID =?";
		}else if(action.equals("desc") && productCount >1) {
			sql = "update Cart set productCount = productCount - 1 where customerID = ? and productID =?";
		}else if(action.equals("remove")) {
			sql = " delete from Cart where customerID = ? and productID =?";
		}
		try {
			if(sql.equals(null)) {
				System.out.println("Lỗi sql update");
			}else {
				conn= new XJDBCHelper().getConnection();			
				prsm = conn.prepareStatement(sql);
				prsm.setInt(1, customerID);
				prsm.setInt(2, productID);
				prsm.executeUpdate();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	public List<Item_Cart> getCarts(int customerID){
		List<Item_Cart> list = new ArrayList<>();
		String sql = "select * from Cart where customerID = ?";
		try {
			conn= new XJDBCHelper().getConnection();
			prsm= conn.prepareStatement(sql);
			prsm.setInt(1, customerID);
			rs = prsm.executeQuery();
			while(rs.next()) {
				Item_Cart item_Cart = new Item_Cart();
				item_Cart.setItemID(rs.getInt(1));
				item_Cart.setCustomerID(rs.getInt(2));
				Product prd = new DAO().getProductById(Integer.toString(rs.getInt(3)));
				item_Cart.setProduct(prd);
				item_Cart.setQuantity(rs.getInt(4));				
				list.add(item_Cart);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
	
//Get Product Thumbnail
	public List<Product_thumbnail> getProductThumbnail(int productID){
		List<Product_thumbnail> list = new ArrayList<Product_thumbnail>();
		String sql = "select * from Product_Thumbnail where productID = ?";
		
		try {
			conn= new XJDBCHelper().getConnection();
			prsm= conn.prepareStatement(sql);
			prsm.setInt(1, productID);
			rs = prsm.executeQuery();
			
			while(rs.next()) {
				DAO dao = new DAO();
				
				Product prd  = dao.getProductById(Integer.toString(rs.getInt(2)));
				Product_thumbnail prd_thumbnail = new Product_thumbnail(rs.getInt(1), prd, rs.getString(3));
				list.add(prd_thumbnail);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return null;
		
	}
	public void deleteCart(int customerID) {
		String sql = "delete cart where customerID = ? ";
		try {
			conn = new XJDBCHelper().getConnection();
			prsm = conn.prepareStatement(sql);
			prsm.setInt(1, customerID);
			prsm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int insertOrder(Orders orders) {
	    String sql = "INSERT INTO Orders (OrderDate, CustomerID, TotalAmount)\r\n"
	            + "VALUES (GETDATE(), ?, ?);";
	    try {
	        conn = new XJDBCHelper().getConnection();
	        prsm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	        prsm.setInt(1, orders.getCustomerID());
	        prsm.setDouble(2, orders.getTotalAmount());
	        int affectedRows = prsm.executeUpdate();
	        if (affectedRows > 0) {
	            rs = prsm.getGeneratedKeys();
	            if (rs.next()) {
	                return rs.getInt(1);
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (prsm != null) prsm.close();
	            if (conn != null) conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return 0;
	}
	
	public void insertOrderDetails(OrderDetail orderDetail) {
		String sql= "INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price)\r\n"
				+ "VALUES (?, ?, ?, ?);";
		try {
			conn = new XJDBCHelper().getConnection();
			prsm = conn.prepareStatement(sql);
			prsm.setInt(1, orderDetail.getOrderID());
			prsm.setInt(2, orderDetail.getProduct().getpID());
			prsm.setInt(3, orderDetail.getQuantity());
			prsm.setDouble(4, orderDetail.getPrice());
			prsm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void resetPassword(String email) {
		String sql = "update Customers set Password=123456 where Email = ?";
		try {
			conn = new XJDBCHelper().getConnection();
			prsm = conn.prepareStatement(sql);
			prsm.setString(1, email);
			prsm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	 public boolean checkEmail(String email) {
		
		 String EMAIL_REGEX = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
		 Pattern pattern = Pattern.compile(EMAIL_REGEX);
		 Matcher matcher = pattern.matcher(email);
	     return matcher.matches();
	 }
	
	public static void main(String[] args) {
		DAO dao = new DAO();
		Orders orders = new Orders(7, 50.99);
		int a = dao.insertOrder(orders);
		System.out.println(a);
	}
}
