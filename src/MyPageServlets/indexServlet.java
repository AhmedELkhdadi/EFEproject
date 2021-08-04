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

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.*;

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
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-YYYY"); 
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
		
		if(request.getParameter("message") != null)
		{		
			String mail = request.getParameter("email");
			String subject = request.getParameter("subject");
			String message = request.getParameter("message");
			String name = request.getParameter("name");
			
			try {
				sendMail(mail,subject,message,name);
				response.setContentType("text/html ; charset=UTF-8");
				response.getWriter().write("good");
			} catch (Exception e) {
				response.setContentType("text/html ; charset=UTF-8");
				response.getWriter().write("error");
				e.printStackTrace();
			}
		}
		
		
		//this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request,response);
	}
	
	
	public static void sendMail(String mail, String subject, String msg,String name) throws Exception {
		
        Properties properties = new Properties();

        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        String myAccountEmail = "ensak.forum.enterprise@gmail.com";
        String p = "ensakforum";
        

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(myAccountEmail, p);
            }
        });
        String[] adminEmails = {"ahmedelkhdadi@gmail.com","josueabou@gmail.com"};
        for(String adminEmail : adminEmails ) {
        	javax.mail.Message message = prepareMessage(session, myAccountEmail, adminEmail ,mail,subject,msg,name);
        	Transport.send(message);
        }

    }

    private static javax.mail.Message prepareMessage(Session session, String myAccountEmail, String recepient,String mail, String subject, String msg, String name) {
        try {
        	javax.mail.Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(myAccountEmail));
            message.setRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(recepient));
            message.setSubject(subject);
            String htmlCode = null;
            htmlCode = "<div style='width:65%;margin:auto;'>"
            		+ "<div style='display:flex;background-color:blue ;height:150px;color:white;'><h1 style='margin:auto'>ENSAK FORUM ENTERPRISE</h1>"
            		+ "<p>Message from "+name+" - "+mail+"</p> <br> <p>Subject : <strong>"+subject+"</strong></p> </div>"
             		+ "<p style='width:100%;text-align:center;color:black;'>"+msg+"</p>"
             		+ "</div>";	
            		
            message.setContent(htmlCode, "text/html");
            return message;
        } catch (Exception ex) {
        	return null;
        }
    }
}