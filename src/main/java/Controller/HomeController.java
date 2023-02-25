package Controller;


import java.io.IOException;
import java.net.URL;
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
import Entities.Categories;
import Entities.Customer;
import Entities.Item_Cart;


/**
 * Servlet implementation class CategoryController
 */
@WebServlet(urlPatterns = {"/HomeController", "/getCategory", "/Login"})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao= new DAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset= UTF-8");
	
//		session.setAttribute("listCate", listCate);
//		request.getRequestDispatcher("index.jsp").forward(request, response);
		String url = request.getRequestURI();
		HttpSession session = request.getSession();
		DAO dao = new DAO();
		if(url.contains("HomeController")) {
//			List<Categories> listCate = dao.getAllCategories();
//			session.setAttribute("listCate", listCate.size());
			Customer customer = (Customer) session.getAttribute("customer");
			if(customer == null) {
				System.out.println("Don't have customer");
			}else {			
				List<Item_Cart> listItem = dao.getCarts(customer.getCustomerID());
				session.setAttribute("cartSize", listItem.size());
			}
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else if(url.contains("getCategory") || url.contains("Login")) {
			List<Categories> listCate = dao.getAllCategories();
			JSONArray array = new JSONArray();
			for (Categories cate : listCate) {
				try {
					JSONObject cateItem = new JSONObject();
					cateItem.put("cateID", cate.getCateID());
					cateItem.put("cateName", cate.getCateName());
					array.put(cateItem);
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
        response.getWriter().write(array.toString());      
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURI();
		if(url.contains("Login")) {
			String user_Email = request.getParameter("user_Email"); 
			String user_Password = request.getParameter("user_Password");
			String messageError = "";
			HttpSession session = request.getSession();
			DAO dao = new DAO();
			Customer customer = dao.getCustomer(user_Email, user_Password);
			if(customer == null) {
				messageError = "Wrong user name/ or password!";
				request.setAttribute("messageError", messageError);
				request.getRequestDispatcher("login.jsp").forward(request, response);
				System.out.println(messageError + "Login again");
			}else {			
				session.setAttribute("customer", customer);
				List<Item_Cart> listItem = dao.getCarts(customer.getCustomerID());
				session.setAttribute("cartSize", listItem.size());
				request.getRequestDispatcher("index.jsp").forward(request, response);
				System.out.println("Session has customer");
			}
			
		}
	
	}

}
