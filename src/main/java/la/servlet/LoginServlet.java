package la.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import la.dao.DAOException;
import la.dao.LoginDAO;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String action= request.getParameter("action");
		try {
			LoginDAO dao = new LoginDAO();
			if(action.equals("login")) {
				int login_id = Integer.parseInt(request.getParameter("loginID"));
				String password = request.getParameter("password");
				if(dao.DisplayMemInfo(login_id, password)) {
					session.setAttribute("loginstate",true );
					gotoPage(request, response, "/mem_MyPage.jsp");
				}
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (DAOException e) {
			e.printStackTrace();
		}
		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

	private void gotoPage(HttpServletRequest request, HttpServletResponse response, String page)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);

	}

}
