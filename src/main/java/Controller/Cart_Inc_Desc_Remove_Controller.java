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
 * Servlet implementation class Cart_Inc_Desc_Remove_Controller
 */
@WebServlet("/Inc_Desc_Remove")
public class Cart_Inc_Desc_Remove_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cart_Inc_Desc_Remove_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String action = request.getParameter("action");
		int pID = Integer.parseInt(request.getParameter("pID"));
		String qty = request.getParameter("qty");
		
		
		int quantity = 0;
		if(qty!= null) {
			quantity = Integer.parseInt(qty);
		}
		System.out.println(quantity);
//		Increase decrease + remove direct to database
		HttpSession session = request.getSession();
		Customer customer = (Customer) session.getAttribute("customer");
		DAO dao = new DAO();
		if(customer !=null) {
			if(dao.checkCart(customer.getCustomerID(), pID)) {			
				if(action.equals("inc")) {
					dao.updateCart(customer.getCustomerID(), pID, quantity, action);
					System.out.println("Increase successfully");
				}
				if(action.equals("desc") && quantity >1) {
					dao.updateCart(customer.getCustomerID(), pID, quantity, action);
					System.out.println("Decrease successfully");
				}else if(action.equals("desc") && quantity ==1) {
					System.out.println("only one product so can't minor");
					dao.updateCart(customer.getCustomerID(), pID, quantity, "remove");
					System.out.println("Remove successfully when quantity = 1");
				}
				if(action.equals("remove")) {
					dao.updateCart(customer.getCustomerID(), pID, quantity, action);
					System.out.println("Remove successfully");
				}
				
				List<Item_Cart> cartSize = dao.getCarts(customer.getCustomerID());
				session.setAttribute("cartSize", cartSize.size());
//				request.getRequestDispatcher("cart.jsp").forward(request, response);
				
			}else {
				System.out.println("No cart to show - check cart = null");
			}
		}else {
			System.out.println("Not yet login + can't do anything");
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
