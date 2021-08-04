package MyPageServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ActivityDao;
import dao.DaoFactory;
import dao.RepresentativeDao;


@WebServlet("/stands")
public class StandsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private RepresentativeDao representativeDao;

    
    public void init() throws ServletException{
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.representativeDao = daoFactory.getRepresentative();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession S = request.getSession(false);
		if(S == null || S.getAttribute("Connected")==null ){
			response.sendRedirect(request.getContextPath()+"/");
			}
		else {
			request.setAttribute("appReps", representativeDao.SelectApproved());
			ActivityDao.handleEventState(request);
			this.getServletContext().getRequestDispatcher("/WEB-INF/stands.jsp").forward(request,response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
