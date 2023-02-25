package Controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import DAO.DAO;
import Entities.Customer;
import Entities.Item_Cart;

/**
 * Servlet implementation class showCartController
 */
@WebServlet("/showCartController")
public class showCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		
		Customer customer = (Customer) session.getAttribute("customer");
		DAO dao = new DAO();
//		List<Categories> listCate = dao.getAllCategories();
		if(customer!= null) {
			
			
			List<Item_Cart> listItem = dao.getCarts(customer.getCustomerID());
			JSONArray array = new JSONArray();
			
			for (Item_Cart item : listItem) {
				
				try {
					JSONObject proItem = new JSONObject();
					proItem.put("Item_ID", item.getItemID());
					proItem.put("pID", item.getProduct().getpID());
					proItem.put("pName", item.getProduct().getpName());
					proItem.put("pPrice", item.getProduct().getpPrice());
					proItem.put("pImage", item.getProduct().getpImage());
					proItem.put("Item_quantity", item.getQuantity());
					proItem.put("customerID", item.getCustomerID());
							
					array.put(proItem);
					System.out.println(array.toString());
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			response.getWriter().write(array.toString());
//			request.getRequestDispatcher("cart.jsp").forward(request, response);
		}else {
			System.out.println("Not yet login from showcart !");
			request.getRequestDispatcher("cart.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
