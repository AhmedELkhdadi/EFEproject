package MyPageServlets;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.xdevapi.JsonString;

import beans.Person;
import dao.AdminDao;
import dao.DaoFactory;
import dao.EntrepriseDao;
import dao.ParticipantDao;
import dao.RepresentativeDao;

@WebServlet("/admin")
public class DashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ParticipantDao participantDao;
	private RepresentativeDao representativeDao;
	private EntrepriseDao entrepriseDao;
	
	public void init() throws ServletException{
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.participantDao = daoFactory.getParticipant();
		this.representativeDao = daoFactory.getRepresentative();
		this.entrepriseDao = daoFactory.getEntreprise();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sess = request.getSession(false);
		Person user = (Person) sess.getAttribute("Connected"); 
		if(sess == null || user == null || user.getStatus() != 1 ) {
			response.sendRedirect(request.getContextPath()+"/");
		}
		else {
		request.setAttribute("participants", participantDao.SelectAll());
		request.setAttribute("RepsWaiting", representativeDao.SelectNotYetApproved());
		request.setAttribute("appReps", representativeDao.SelectApproved());
		Map<String,String> participantsStats = participantDao.getStatistics();
		request.setAttribute("genderStats", participantsStats.get("genderStats"));
		request.setAttribute("levelStats", participantsStats.get("levelStats"));
		request.setAttribute("instStats", participantsStats.get("instStats"));
		Map<String,String> standStats = entrepriseDao.getStatistics();
		request.setAttribute("resumeStats", standStats.get("resumeStats"));
		request.setAttribute("messagesStats", standStats.get("messagesStats"));

		this.getServletContext().getRequestDispatcher("/WEB-INF/dashboard.jsp").forward(request,response);
		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operation =  request.getParameter("approvalOperation");
		if(operation!=null) {
		String id_r = request.getParameter("rep_id");
		int res = AdminDao.approveRejectRep(id_r, Integer.parseInt(operation));
		//send email *maybe*
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().write(Integer.toString(res));
		}
		else
		doGet(request, response);
	}

}
