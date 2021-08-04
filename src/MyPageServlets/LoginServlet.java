package MyPageServlets;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;  

import beans.Participant;
import beans.Representative;
import beans.Admin;
import dao.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1;
	private ParticipantDao participantDao;
	private RepresentativeDao representativeDao;
	private AdminDao adminDao;
    
	public void init() throws ServletException{
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.participantDao= daoFactory.getParticipant();
		this.representativeDao= daoFactory.getRepresentative();
		this.adminDao = daoFactory.getAdmin();
	}
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		ActivityDao.handleEventState(request);
		this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		boolean connected = false;
		boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
	    if (ajax) {
	        // Handle ajax (JSON or XML) response.
	    	Participant participant = new Participant();
			String log = request.getParameter("loginL");
			String pw = request.getParameter("passwordL");
			participant.setLogin(log);
			participant.setPassword(pw);
			
			boolean verified = participantDao.authenticate(participant);
			if(verified) {
				HttpSession Sess = request.getSession();
				Sess.setAttribute("Connected", participant);
				Sess.setAttribute("firstLog",true);
				connected = true;
				response.setContentType("text/html ; charset=UTF-8");
				response.getWriter().write("good");
				//response.sendRedirect(request.getContextPath()+ "/");
			}else {
				Representative rep = new Representative();
				rep.setLogin(log);
				rep.setPassword(pw);
				verified = representativeDao.authenticate(rep); //Entreprise is set for representative in the function authentify()
				if(verified) {
					HttpSession Sess = request.getSession();
					Sess.setAttribute("Connected", rep);
					connected = true;
					response.setContentType("text/html ; charset=UTF-8");
					response.getWriter().write("good");
				}
				else {
					Admin admin = new Admin();
					admin.setLogin(log);
					admin.setPassword(pw);
					verified = adminDao.authenticate(admin);
					if(verified) {
						HttpSession Sess = request.getSession();
						Sess.setAttribute("Connected", admin);
						connected = true;
						response.setContentType("text/html ; charset=UTF-8");
						response.getWriter().write("good");
					}
					else {
						response.setContentType("text/html ; charset=UTF-8");
						response.getWriter().write("error");
						}
				}
			}
	    	
	    }
	    
		/*if(!connected) 
			this.doGet(request, response);
		else
		{
			response.sendRedirect(request.getContextPath()+ "/"); // we use redirect because forward() will keep the post data even after going to index
		}*/
		
	   
	}

}
