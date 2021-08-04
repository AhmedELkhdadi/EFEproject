
package MyPageServlets;

import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import beans.Admin;
import beans.Person;
import beans.Speaker;
import beans.Activity;
import dao.AdminDao;
import dao.DaoFactory;
import dao.SpeakerDao;
import dao.ActivityDao;
import dao.EntrepriseDao;
import dao.ParticipantDao;
import dao.RepresentativeDao;

@WebServlet("/admin")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class DashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ParticipantDao participantDao;
	private RepresentativeDao representativeDao;
	private EntrepriseDao entrepriseDao;
	private SpeakerDao speakerDao;
	private ActivityDao activityDao;
	public final static String SPEAKER_IMG_FOLDER = "/assets/img/speakers";

	public void init() throws ServletException {
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.participantDao = daoFactory.getParticipant();
		this.representativeDao = daoFactory.getRepresentative();
		this.entrepriseDao = daoFactory.getEntreprise();
		this.speakerDao = daoFactory.getSpeaker();
		this.activityDao = daoFactory.getActivity();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sess = request.getSession(false);
		if (sess == null) {
			response.sendRedirect(request.getContextPath() + "/");
		} else {
			request.setAttribute("speakers", speakerDao.SelectAll());
			List<Activity> activities1 = activityDao.SelectDayActivities(1);
			List<Activity> activities2 = activityDao.SelectDayActivities(2);
			request.setAttribute("activities1", activities1);
			request.setAttribute("activities2", activities2);
			Person user = (Person) sess.getAttribute("Connected");
			if (user == null || user.getStatus() != 1) {
				response.sendRedirect(request.getContextPath() + "/");
			} else {
				request.setAttribute("participants", participantDao.SelectAll());
				request.setAttribute("RepsWaiting", representativeDao.SelectNotYetApproved());
				request.setAttribute("appReps", representativeDao.SelectApproved());
				Map<String, String> participantsStats = participantDao.getStatistics();
				request.setAttribute("genderStats", participantsStats.get("genderStats"));
				request.setAttribute("levelStats", participantsStats.get("levelStats"));
				request.setAttribute("instStats", participantsStats.get("instStats"));
				Map<String, String> standStats = entrepriseDao.getStatistics();
				request.setAttribute("resumeStats", standStats.get("resumeStats"));
				request.setAttribute("messagesStats", standStats.get("messagesStats"));

				this.getServletContext().getRequestDispatcher("/WEB-INF/dashboard.jsp").forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("nameSpeaker") != null) {
			Part filePart = request.getPart("imageSpeaker");
			String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
			String format = "";
			int extensionIndex = fileName.lastIndexOf(".");
			if (extensionIndex > 0) {
				format = fileName.substring(extensionIndex + 1);
				format = format.toLowerCase();
			}
			Speaker spk = new Speaker();
			UUID uid = UUID.randomUUID();
			String id = "" + uid;
			spk.setId(id);
			String newName = id + '.' + format;
			String imageUploadPath = getServletContext().getRealPath(SPEAKER_IMG_FOLDER);
			String fullPath = imageUploadPath + '\\' + newName;
			filePart.write(fullPath);

			spk.setName(request.getParameter("nameSpeaker"));
			spk.setFname(request.getParameter("fnameSpeaker"));
			spk.setDescription(request.getParameter("descSpeaker"));
			spk.setImage(newName);
			if (speakerDao.addSpeaker(spk)) {
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write("good");
			} else {

				response.setContentType("text/html ; charset=UTF-8");
				response.getWriter().write("error");
			}

		} else {
			if (request.getParameter("activityName") != null) {

				Activity activity = new Activity();

				activity.setId(request.getParameter("activityId").toString());
				activity.setName(request.getParameter("activityName"));
				activity.setSpeakerId(request.getParameter("activitySpeaker"));

				if (activityDao.addActivity(activity)) {
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write("good");
				} else {
					response.setContentType("text/html ; charset=UTF-8");
					response.getWriter().write("error");
				}

			} else {
				String operation = request.getParameter("approvalOperation");
				if (operation != null) {
					String id_r = request.getParameter("rep_id");
					int res = AdminDao.approveRejectRep(id_r, Integer.parseInt(operation));
					// asynchronous call, so we don't block execution waiting for email to be sent
					new Thread(() -> {
						try {
							Admin.sendMail(request.getParameter("email"), Integer.parseInt(operation));
						} catch (Exception e) {
							e.printStackTrace();
						}
					}).start();
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write(Integer.toString(res));
				} else {
					doGet(request, response);
				}
			}
		}

	}
}
