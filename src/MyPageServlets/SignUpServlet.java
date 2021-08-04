package MyPageServlets;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import beans.Participant;
import beans.Representative;
import beans.Entreprise;
import dao.*;


import org.opencv.core.Mat;
import org.opencv.core.MatOfRect;


import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.objdetect.CascadeClassifier;

@WebServlet("/sign_up")
@MultipartConfig( fileSizeThreshold = 1024 * 1024, 
maxFileSize = 1024 * 1024 * 5,
maxRequestSize = 1024 * 1024 * 5 * 5 )
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ParticipantDao participantDao;
	private RepresentativeDao representativeDao;
	private EntrepriseDao entrepriseDao;
	private LevelDao levelDao;
	private InstitutionDao institutionDao;
	public final static String PARTICIPANT_IMG_FOLDER = "/assets/img/participants";
    
	public void init() throws ServletException{
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.participantDao= daoFactory.getParticipant();
		this.representativeDao= daoFactory.getRepresentative();
		this.entrepriseDao= daoFactory.getEntreprise();
		this.institutionDao= daoFactory.getInstitution();
		this.levelDao= daoFactory.getLevel();
		System.load("C:\\opencv\\build\\java\\x64\\opencv_java3412.dll");
		
	}
	
	protected boolean imageIsValide(String imagePath) {
	      Mat src = Imgcodecs.imread(imagePath);
	      // on instancie le CascadeClassifier
	      String xmlFileRelativePath = "/assets/opencvModel/lbpcascade_frontalface_improved.xml";
	      String xmlFile = getServletContext().getRealPath(xmlFileRelativePath);
	      CascadeClassifier classifier = new CascadeClassifier(xmlFile);
	      // Detection
	      MatOfRect faceDetections = new MatOfRect();
	      classifier.detectMultiScale(src, faceDetections);
	      if( faceDetections.toArray().length == 1) {
	    	  return true;
	      }else {
	    	  return false;
	      }
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
		if(request.getParameter("loginP") != null)
		{   
			UUID uid = UUID.randomUUID();
			String id = "" + uid;
			
			Part filePart = request.getPart("Pimage");
			String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
			String format = "";
			int extensionIndex = fileName.lastIndexOf(".");
			if(extensionIndex > 0){
			               format = fileName.substring(extensionIndex+1);
			               format = format.toLowerCase();
			}
			String newName = id +'.'+ format;
			String imageUploadPath = getServletContext().getRealPath( PARTICIPANT_IMG_FOLDER  );
            String fullPath = imageUploadPath + '\\' + newName; 
           
            
            filePart.write( fullPath );
			if(imageIsValide(fullPath)) {
				Participant participant  = new Participant(id, request.getParameter("nameP")
						, request.getParameter("fnameP"), request.getParameter("emailP"), request.getParameter("telP")
						, request.getParameter("institution"),request.getParameter("level"),request.getParameter("SF")
						,request.getParameter("sexe"), Integer.parseInt(request.getParameter("age")),newName,3,null,null,null);
				participant.setLogin(request.getParameter("loginP"));
				participant.setPassword(request.getParameter("passwordP"));
				if(participantDao.addParticipant(participant)) {
					HttpSession Sess = request.getSession();
					Sess.setAttribute("Connected", participant);
					Sess.setAttribute("firstLog",true);
					connected = true;
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write(id); 
				//	response.sendRedirect(request.getContextPath()+ "/participant?id_p="+participant.getId());
				}
				else {
					request.setAttribute("ApplyRes", false);
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write("error"); 
				}
			}
			else {
				request.setAttribute("ApplyRes", false);
				File imageUploaded = new File(fullPath);
				imageUploaded.delete();
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write("imgProblem");
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
			rep.setStatus(2);
			if(representativeDao.addRep(rep)){
				Entreprise ent = new Entreprise();
				ent.setRep_id(rep.getId());			
				ent.setName(request.getParameter("entName"));
				ent.setDescription(request.getParameter("entDesc"));
				ent.setSlogan(request.getParameter("slogan"));
				ent.setLocation(request.getParameter("entLoc"));
				ent.setEmail(request.getParameter("entEmail"));
				ent.setDomain(request.getParameter("entDomain"));
				ent.setLogo("noLogo.png");
				ent.setBannerImage("noBanner.png");
				if(entrepriseDao.addEntreprise(ent)) {
					rep.entreprise= ent;
					HttpSession Sess = request.getSession();
					Sess.setAttribute("firstLog",true);
					Sess.setAttribute("Connected", rep);
					connected = true;
					response.sendRedirect(request.getContextPath()+ "/workshop?Rep="+rep.getId());
				}
			}
			else
				request.setAttribute("ApplyRes", false);
			
		}
//		if(!connected) 
//			this.doGet(request, response);
		
	}
}
