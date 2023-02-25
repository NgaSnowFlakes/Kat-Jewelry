package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DAO;
import Entities.Customer;
import Entities.Item_Cart;
import Entities.OrderDetail;
import Entities.Orders;

/**
 * Servlet implementation class CheckOutController
 */
@WebServlet(urlPatterns = {"/Checkout"})
public class CheckOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckOutController() {
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
//		request.getRequestDispatcher("index.jsp").forward(request, response);

		HttpSession session = request.getSession();
		Customer customer = (Customer) session.getAttribute("customer");
		if(customer == null) {
			response.getWriter().print(false);
		}else {
			double totalAmount = Double.parseDouble(request.getParameter("totalAmount"));
			DAO dao = new DAO();
			Orders orders = new Orders(customer.getCustomerID(), totalAmount);
			int orderID = dao.insertOrder(orders);
			List<Item_Cart> list = dao.getCarts(customer.getCustomerID());
			for (Item_Cart item_Cart : list) {
				OrderDetail orderDetail = new OrderDetail(orderID, item_Cart.getProduct(),
						item_Cart.getQuantity(),
						item_Cart.getProduct().getpPrice() * item_Cart.getQuantity());
				dao.insertOrderDetails(orderDetail);
			}
			dao.deleteCart(customer.getCustomerID());
			session.removeAttribute("cartSize");
			response.getWriter().print(true);
		}
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}
