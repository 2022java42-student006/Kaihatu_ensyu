package la.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import la.bean.MemberBean;


@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			String action = request.getParameter("action");
			if(action.equals("mem_reg")) {		
			
				MemberBean bean = new MemberBean();
				bean.setName(request.getParameter("name"));
				bean.setMem_address(request.getParameter("mem_address"));
				bean.setPhoneNumber(request.getParameter("phone"));
				bean.setEmail(request.getParameter("email"));
				bean.setBirthday(request.getParameter("birthday"));
				bean.setLogin_id(request.getParameter("login_id"));
				bean.setBirthday(request.getParameter("birthday"));
				
				gotoPage(request, response, "/mem_MyPage.jsp");
			}
		
	}
	private void gotoPage(HttpServletRequest request, HttpServletResponse response, String page) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
