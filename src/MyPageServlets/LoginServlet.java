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
		
		if(request.getParameter("authentify") != null) {
			Participant participant = new Participant();
			String log = request.getParameter("loginL");
			String pw = request.getParameter("passwordL");
			participant.setLogin(log);
			participant.setPassword(pw);
			
			boolean verified = participantDao.authentify(participant);
			if(verified) {
				HttpSession Sess = request.getSession();
				Sess.setAttribute("Connected", participant);
				connected = true;
			}
			else {
				Representative rep = new Representative();
				rep.setLogin(log);
				rep.setPassword(pw);
				verified = representativeDao.authentify(rep); //Entreprise is set for representative in the function authentify
				if(verified) {
					HttpSession Sess = request.getSession();
					Sess.setAttribute("Connected", rep);
					connected = true;
				}
				else {
					Admin admin = new Admin();
					admin.setLogin(log);
					admin.setPassword(pw);
					verified = adminDao.authentify(admin);
					if(verified) {
						HttpSession Sess = request.getSession();
						Sess.setAttribute("Connected", admin);
						connected = true;
					}
					else
						request.setAttribute("con", "Login or password incorrect");
				}
			}	
		}
		
		if(!connected) 
			this.doGet(request, response);
		else
		{
			response.sendRedirect(request.getContextPath()+ "/"); // we use redirect because forward() will keep the post data even after going to index
		}
	}

}
