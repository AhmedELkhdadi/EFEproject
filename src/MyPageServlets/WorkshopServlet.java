package MyPageServlets;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.MatOfRect;
import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.objdetect.CascadeClassifier;

import beans.Person;
import beans.Representative;
import beans.Resume;
import dao.ActivityDao;
import dao.DaoFactory;
import dao.EntrepriseDao;
import dao.MessagesDao;
import dao.RepresentativeDao;
import dao.ResumeDao;


@WebServlet(urlPatterns="/workshop",asyncSupported = true)
@MultipartConfig( fileSizeThreshold = 1024 * 1024, 
					maxFileSize = 1024 * 1024 * 5,
					maxRequestSize = 1024 * 1024 * 5 * 5 )
public class WorkshopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RepresentativeDao representativeDao ;
	private MessagesDao messagesDao;
	private EntrepriseDao entrepriseDao;
	private ResumeDao resumeDao;
	public final static String BANNER_FOLDER = "/assets/img/EnterpriseBanners";
	public final static String LOGO_FOLDER = "/assets/img/EnterpriseLogos";
	public final static String RESUME_FOLDER = "/assets/resumes";
	

    public String bannerUploadPath;
    public String logoUploadPath;
    public String resumeUploadPath;
    
    public void init() throws ServletException{
    	DaoFactory daoFactory = DaoFactory.getInstance();
    	this.representativeDao = daoFactory.getRepresentative();
    	this.entrepriseDao = daoFactory.getEntreprise();
    	this.messagesDao = daoFactory.getMessages();
    	this.resumeDao = daoFactory.getResume();
    	bannerUploadPath = getServletContext().getRealPath( BANNER_FOLDER );
    	logoUploadPath = getServletContext().getRealPath( LOGO_FOLDER );
    	resumeUploadPath = getServletContext().getRealPath( RESUME_FOLDER );
        
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession S = request.getSession(false);
		if(S == null || S.getAttribute("Connected")==null ){
			response.sendRedirect(request.getContextPath()+"/");
			}
		else {
			String rep_id = request.getParameter("Rep");
			Representative standRep = representativeDao.selectRep(rep_id);
			if(standRep == null) {
				response.sendRedirect(request.getContextPath()+"/stands");
			}
			else {
				Person user = (Person) S.getAttribute("Connected");
				request.setAttribute("user", user);
				request.setAttribute("standRep", standRep);
				
				if(user.getStatus() == 3) {
					request.setAttribute("sentResume", resumeDao.cvAlreadySent(standRep.getEntreprise().getId(), user.getId()));
				}else
					if(user.getId().equals(standRep.getId()) ) {
						request.setAttribute("standResume", resumeDao.getStandResumes(standRep.getEntreprise().getId())); // if null we show representative no resumes yet
					}
				ActivityDao.handleEventState(request);
				this.getServletContext().getRequestDispatcher("/WEB-INF/workshop.jsp").forward(request,response);
			}
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("message")!=null) {
			HttpSession S = request.getSession(false);
			Person user = (Person) S.getAttribute("Connected");
			if(request.getParameter("responseTo") == null) {
				int newMsgId = messagesDao.addMessage(request.getParameter("message"), request.getParameter("writer"),
						request.getParameter("writer_name"), request.getParameter("stand"),
						null, Integer.parseInt(request.getParameter("privacy")),user.getStatus());
				if(newMsgId != 0) {
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write(Integer.toString(newMsgId));                              
				}
				else {
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write("error");
				}
			}else {
				int newMsgId = messagesDao.addMessage(request.getParameter("message"), request.getParameter("writer"),
						request.getParameter("writer_name"), request.getParameter("stand"),
						Integer.valueOf(request.getParameter("responseTo")), Integer.parseInt(request.getParameter("privacy")),user.getStatus());
				if(newMsgId != 0) {
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write("ok");
				}
				else {
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write("error");
					}
				}
		}
		if(request.getParameter("bannerInput")!= null) {
			Part filePart = request.getPart("bannerImage");
			String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
			String format = "";
			int extensionIndex = fileName.lastIndexOf(".");
			if(extensionIndex > 0){
			               format = fileName.substring(extensionIndex+1);
			               format = format.toLowerCase();
			}
			Representative Rep = (Representative) request.getSession(false).getAttribute("Connected");
			String newName = Rep.getId() +'.'+ format;
            String fullPath = bannerUploadPath + "/"+ newName; 
            filePart.write( fullPath );
            entrepriseDao.changeBanner(newName, Rep.getEntreprise().getId()); 
            response.setContentType("text/html;charset=UTF-8");
			response.getWriter().write(newName);
		}
		if(request.getParameter("logoInput")!= null) {
			Part filePart = request.getPart("logoImage");
			String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
			String format = "";
			int extensionIndex = fileName.lastIndexOf(".");
			if(extensionIndex > 0){
			               format = fileName.substring(extensionIndex+1);
			               format = format.toLowerCase();
			}
			Representative Rep = (Representative) request.getSession(false).getAttribute("Connected");
			String newName = Rep.getId() +'.'+ format;
			String fullPath = logoUploadPath + "/" + newName; 
			filePart.write( fullPath );
			entrepriseDao.changeLogo(newName, Rep.getEntreprise().getId()); 
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().write(newName);
		}
		if(request.getParameter("standIdResume")!= null) {
			Part filePart = request.getPart("paticipantResume");
			String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
			String format ="";
			int extensionIndex = fileName.lastIndexOf(".");
			if(extensionIndex>0) {
				format = fileName.substring(extensionIndex+1);
				format = format.toLowerCase();
			}
			String[] formatsPossible = {"pdf"};
			if(Arrays.asList(formatsPossible).contains(format)) {
				UUID uid= UUID.randomUUID();
				String cvId = ""+ uid;
				String newName = cvId +'.'+ format;
				if(resumeDao.addResume(cvId, newName, request.getParameter("standIdResume"), request.getParameter("userIdResume"), request.getParameter("userNameResume"))) {
					String fullPath = resumeUploadPath+ "/" + newName;
					filePart.write(fullPath);
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write(newName);
				}else {
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write("error");
				}
					
			}
			else {
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write("wrong");
			}
		}
		if(request.getParameter("idResumeToChange")!= null) {
			Part filePart = request.getPart("paticipantResume");
			String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
			String format ="";
			int extensionIndex = fileName.lastIndexOf(".");
			if(extensionIndex>0) {
				format = fileName.substring(extensionIndex+1);
				format = format.toLowerCase();
			}
			String[] formatsPossible = {"pdf"};
			if(Arrays.asList(formatsPossible).contains(format)) {
				File fileToDelete = new File(resumeUploadPath +"/"+request.getParameter("pathResumeToChange"));
				if(fileToDelete.delete()) {
					String newName = request.getParameter("idResumeToChange") +'.'+ format;
					if(resumeDao.changePath(request.getParameter("idResumeToChange"),newName)) {
						String fullPath = resumeUploadPath +"/" + newName;  
						filePart.write(fullPath);
						response.setContentType("text/html;charset=UTF-8");
						response.getWriter().write(newName);
					}else {
						response.setContentType("text/html;charset=UTF-8");
						response.getWriter().write("error");
					}
					
				}
				else {
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write("error");}
				
					
			}
			else {
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write("wrong");
			}
		}
		if(request.getParameter("meetLink")!= null) {
			entrepriseDao.changeMeetLink(request.getParameter("meetLink"), request.getParameter("stand"));
		}
			
	}

}
