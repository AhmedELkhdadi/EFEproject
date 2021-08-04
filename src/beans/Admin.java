package beans;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.*;



public class Admin extends Person {

	public Admin(String id, String login, String password, String name, String fname, String email, String tel,int status) {
		super(id, login, password, name, fname, email, tel,status);
	}
	public Admin() {
		super();
	}
	
	public static void sendMail(String recepient,int approved) throws Exception {
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

        javax.mail.Message message = prepareMessage(session, myAccountEmail, recepient, approved);
        Transport.send(message);

    }

    private static javax.mail.Message prepareMessage(Session session, String myAccountEmail, String recepient,int approved) {
        try {
        	javax.mail.Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(myAccountEmail));
            message.setRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(recepient));
            message.setSubject("Ensak Forum Enterprise: Application result");
            String htmlCode = null;
            if(approved == 1) {
            htmlCode = "<div style='width:65%;margin:auto;'><div style='display:flex;background-color:blue ;height:150px;color:white;'><h1 style='margin:auto'>ENSAK FORMUM ENTERPRISE</h1></div>"
            		+ "<p style='width:100%;text-align:center;color:black;'>We are glad to inform you that Your request to represent your enterprise has been"
            		+ " <b style='color:blue'>approved</b><br/>If you need more information, contact us at this address. Or visit us at <a href='http://localhost:8080/EFEproject/'>Ensak Forum Enterprise</a></p><div>";
            }
            else {
            htmlCode = "<div style='width:65%;margin:auto;'>"
            		+ "<div style='display:flex;background-color:blue ;height:150px;color:white;'><h1 style='margin:auto'>ENSAK FORMUM ENTERPRISE</h1></div>"
                 		+ "<p style='width:100%;text-align:center;color:black;'>We are sorry to inform you that Your request to represent your enterprise has been"
                 		+ " <span style='color:#dc3545'>Rejected</span><br/>If you need more information, "
                 		+ "contact us at this address. Or visit us at <a href='http://localhost:8080/EFEproject/'>Ensak Forum Enterprise</a></p>"
                 		+ "</div>";	
            }
            message.setContent(htmlCode, "text/html");
            return message;
        } catch (Exception ex) {
        	return null;
        }
    }

	
	
}
