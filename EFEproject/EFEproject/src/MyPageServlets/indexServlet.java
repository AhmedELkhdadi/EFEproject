package MyPageServlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Activity;
import beans.Person;
import dao.ActivityDao;
import dao.DaoFactory;
import dao.SpeakerDao;

@WebServlet("/")
public class indexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private SpeakerDao speakerDao; 
    private ActivityDao activityDao;
    
    public void init() throws ServletException{
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.speakerDao = daoFactory.getSpeaker();
		this.activityDao = daoFactory.getActivity();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	if(request.getParameter("logout")!=null) {
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath()+ "/");
	}
	else {
		request.setAttribute("speakers", speakerDao.SelectAll());
		List<Activity> activities1 = activityDao.SelectDayActivities(1);
		List<Activity> activities2 = activityDao.SelectDayActivities(2);
		request.setAttribute("activities1", activities1 );
		request.setAttribute("activities2", activities2 );
		SimpleDateFormat formatter = new SimpleDateFormat("DD-MM-YYYY"); 
		request.setAttribute("day1", formatter.format(activities1.get(0).getStartDate()));
		request.setAttribute("day2", formatter.format(activities2.get(0).getStartDate()));
		ActivityDao.handleEventState(request);
		HttpSession S = request.getSession(false);

		if(S == null || S.getAttribute("Connected") == null ){
			request.setAttribute("connected", false);
			this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request,response);
			}
		else{	
			Person user = (Person) S.getAttribute("Connected");
			request.setAttribute("user", user );
			request.setAttribute("connected", true);
			this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request,response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request,response);
	}
}