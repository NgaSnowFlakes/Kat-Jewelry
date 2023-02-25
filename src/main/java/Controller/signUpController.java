package Controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;





/**
 * Servlet implementation class signUpController
 */
@WebServlet("/signUp")
public class signUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset= UTF-8");
		String firstname = request.getParameter("firstname");
		String email = request.getParameter("email");
		String lastname = request.getParameter("lastname");
		String password = request.getParameter("password");
		
		String error = "";
		DAO dao = new DAO();
		if(firstname.equals("") || firstname.length()<3 || firstname.length()>30) {
			error = "Tên phải từ 3 - 30 kí tự <br>";
		}
		if(lastname.equals("") || lastname.length()<3 || lastname.length()>30) {
			error += "Họ phải từ 3 - 30 kí tự <br>";
		}
		if(password.equals("")) {
			error += "Password không được để trống <br>";
		}
		if(!dao.checkEmail(email)) {
			error += "Email không hợp lệ <br>";
		}
		if(dao.checkExist(email)) {
			error += "Email đã đăng kí rồi. Vui lòng đăng nhập <br>";
		}
		
		if(error.equals("")) {
			dao.signUp(firstname, lastname, email, password);
			error = "Chúc mừng bạn đã đăng kí thành công";
			request.setAttribute("errorMessage", error);
			response.sendRedirect("login.jsp");
		}else {
			request.setAttribute("errorMessage", error);
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}		
		
		doGet(request, response);
	}
	
	

}
