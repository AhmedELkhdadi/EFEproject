package MyPageServlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import beans.Participant;
import beans.Representative;
import beans.Entreprise;
import dao.*;

@WebServlet("/sign_up")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ParticipantDao participantDao;
	private RepresentativeDao representativeDao;
	private EntrepriseDao entrepriseDao;
	private LevelDao levelDao;
	private InstitutionDao institutionDao;
    
	public void init() throws ServletException{
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.participantDao= daoFactory.getParticipant();
		this.representativeDao= daoFactory.getRepresentative();
		this.entrepriseDao= daoFactory.getEntreprise();
		this.institutionDao= daoFactory.getInstitution();
		this.levelDao= daoFactory.getLevel();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		request.setAttribute("levels", levelDao.SelectAll());
		request.setAttribute("institutions", institutionDao.SelectAll() );
		ActivityDao.handleEventState(request);
		this.getServletContext().getRequestDispatcher("/WEB-INF/signup.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean connected = false;
		if(request.getParameter("signUp") != null)
		{   
			Participant participant  = new Participant();
			participant.setLogin(request.getParameter("loginP"));
			participant.setPassword(request.getParameter("passwordP"));
			participant.setName(request.getParameter("nameP"));
			participant.setFname(request.getParameter("fnameP"));
			participant.setEmail(request.getParameter("emailP"));
			participant.setTel(request.getParameter("telP"));
			participant.setInstitution(request.getParameter("institution"));
			participant.setLevel(request.getParameter("level"));
			participant.setStudyField(request.getParameter("SF"));
			participant.setSexe(request.getParameter("sexe"));
			participant.setAge(Integer.parseInt(request.getParameter("age")));
			if(participantDao.addParticipant(participant)) {
				HttpSession Sess = request.getSession();
				Sess.setAttribute("Connected", participant);
				connected = true;
			}
			
		}
		if(request.getParameter("apply") != null)
		{	
			
			Representative rep= new Representative();
			rep.setLogin(request.getParameter("loginR"));
			rep.setPassword(request.getParameter("passwordR"));
			rep.setName(request.getParameter("nameR"));
			rep.setFname(request.getParameter("fnameR"));
			rep.setEmail(request.getParameter("emailR"));
			rep.setTel(request.getParameter("telR"));
			if(representativeDao.addRep(rep)){
				Entreprise ent = new Entreprise();
				ent.setRep_id(rep.getId());			
				ent.setName(request.getParameter("entName"));
				ent.setDescription(request.getParameter("entDesc"));
				ent.setSlogan(request.getParameter("slogan"));
				ent.setLocation(request.getParameter("entLoc"));
				ent.setEmail(request.getParameter("entEmail"));
				ent.setDomain(request.getParameter("domain"));
				ent.setLogo("noLogo.png");
				ent.setBannerImage("noBanner.png");
				if(entrepriseDao.addEntreprise(ent)) {
					rep.entreprise= ent;
					HttpSession Sess = request.getSession();
					Sess.setAttribute("Connected", rep);
					connected = true;
				}
			}
			else
				request.setAttribute("ApplyRes", false);
			
		}
		if(!connected) 
			this.doGet(request, response);
		else
		{
			response.sendRedirect(request.getContextPath()+ "/");
		}
	}
}
