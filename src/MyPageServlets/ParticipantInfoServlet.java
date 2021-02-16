package MyPageServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Participant;
import beans.Person;
import dao.ActivityDao;
import dao.DaoFactory;
import dao.ParticipantDao;

@WebServlet("/participant")
public class ParticipantInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ParticipantDao participantDao;

	public void init() throws ServletException{
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.participantDao = daoFactory.getParticipant();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession S = request.getSession(false);
		if(S == null || S.getAttribute("Connected")==null ){
			response.sendRedirect(request.getContextPath()+"/");
			}
		else {
			String id = request.getParameter("id_p");
			Participant participant = participantDao.selectPart(id);
			if(participant == null) {
				response.sendRedirect(request.getContextPath()+"/");
			}else {
				Person user = (Person) S.getAttribute("Connected");
				request.setAttribute("user", user);
				request.setAttribute("participant", participant);
				ActivityDao.handleEventState(request);
				this.getServletContext().getRequestDispatcher("/WEB-INF/personal_info.jsp").forward(request,response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("modifiedAccount") != null) {
			if(participantDao.modifyInfo(request.getParameter("modifiedAccount"), request.getParameter("training")
					,request.getParameter("awards"), request.getParameter("techSkills"), request.getParameter("softSkills")
					, request.getParameter("langages"), request.getParameter("description"), request.getParameter("intrests")
					,request.getParameter("email"),request.getParameter("tel"),request.getParameter("facebook")
					,request.getParameter("git"),request.getParameter("linkedIn"))) {
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write("ok");
			}else {
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write("error");
			}
		}
		doGet(request, response);
	}

}
