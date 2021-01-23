package MyPageServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDao;
import dao.DaoFactory;

@WebServlet("/ajaxRequests")
public class AjaxRequestsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminDao adminDao;
	
	public void init() throws ServletException{
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.adminDao = daoFactory.getAdmin();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("loginEntered") != null) {
			if(adminDao.usernameExists(request.getParameter("loginEntered"))) {
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write("used");
			}
			else {
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write("unused");
			}
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
