package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import DAO.DAO;
import Entities.Product;

/**
 * Servlet implementation class GetProductByCateController
 */
@WebServlet("/GetProductByCateController")
public class GetProductByCateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetProductByCateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		if(request.getAttribute("cateID") !=null) {
			request.removeAttribute("cateID");
		}
		DAO dao = new DAO();
		String cateID = request.getParameter("cateID");
		List<Product> listProductByCate = null;
		if (cateID.equals("6")) {
			listProductByCate = dao.getAllProducts();
		} else {
			listProductByCate = dao.getProductByCategory(cateID);
		}
		JSONArray array = new JSONArray();
		for (Product pro :listProductByCate) {
			try {
				JSONObject proItem = new JSONObject();
				proItem.put("pID", pro.getpID());
				proItem.put("pName", pro.getpName());
				proItem.put("pImage", pro.getpImage());
				proItem.put("pPrice", pro.getpPrice());
				proItem.put("pDesc", pro.getpDesc());
				proItem.put("cateID", pro.getCateID());
				array.put(proItem);
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		response.getWriter().write(array.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
