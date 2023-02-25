package Controller;
import DAO.DAO;
import Entities.Customer;
import Entities.Item_Cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;









/**
 * Servlet implementation class AddToCartController
 */
@WebServlet(urlPatterns = {"/add_to_cart"})
public class AddToCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddToCartController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		String pid = request.getParameter("pID");
		int quantity = 1;
		String pQuantity = request.getParameter("pQuantity");
		if(!(pQuantity.equals(""))) {
			quantity = Integer.parseInt(pQuantity);
		}
		System.out.println("quantity: " + quantity);
//		String cateID = request.getParameter("cateID");
		DAO dao = new DAO();
//		Add product to Cart database and get it up
		HttpSession session = request.getSession();
		Customer customer = (Customer) session.getAttribute("customer");
	
		
		if (customer == null) {
			response.getWriter().print(false);		
		} else {
			int customerID = customer.getCustomerID();
			int productID = Integer.parseInt(pid);
			dao.insertCart(customerID, productID, quantity);
			List<Item_Cart> listCart = dao.getCarts(customerID);
			session.setAttribute("cartSize", listCart.size());
		}
		


	}

//}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
			doGet(request, response);
	}
}
