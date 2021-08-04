package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DaoFactory {
private String url;
private String username;
private String password;

DaoFactory(String url, String username, String password){
	this.url= url;
	this.username= username;
	this.password = password;
}
public static DaoFactory getInstance() { // on fait le chargement de la factory, le driver est chargé et les informations de
										//	la base de données sont passé, et utilisé en suite dans la fonction getConnection
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	}catch(ClassNotFoundException e) {
}
	DaoFactory instance = new DaoFactory("jdbc:mysql://localhost:3306/efedb?serverTimezone=UTC","root","rootroot"); // 
	return instance;
}
public Connection getConnection() throws SQLException{
	return DriverManager.getConnection(url,username,password);
}
public ParticipantDao getParticipant() {
	return new ParticipantDaoImpl(this);
}
public RepresentativeDao getRepresentative() {
	return new RepresentativeDaoImpl(this);
}
public EntrepriseDao getEntreprise() {
	return new EntrepriseDaoImpl(this);
}
public InstitutionDao getInstitution() {
	return new InstitutionDaoImpl(this);
}
public LevelDao getLevel() {
	return new LevelDaoImpl(this);
}
public AdminDao getAdmin() {
	return new AdminDaoImpl(this);
}
public SpeakerDao getSpeaker() {
	return new SpeakerDaoImpl(this);
}
public ActivityDao getActivity() {
	return new ActivityDaoImpl(this);
}
public MessagesDao getMessages() {
	return new MessagesDaoImpl(this);
}
public ResumeDao getResume() {
	return new ResumeDaoImpl(this);
}
}
