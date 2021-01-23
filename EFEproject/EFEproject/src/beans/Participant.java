package beans;

import java.util.Map;

public class Participant extends Person {
	
	private int age;
	private String institution;
	private String level;
	private String StudyField;
	private String sexe;
	
	public Participant(String id, String login, String password, String name, String fname, String email, String tel
			, String institution,String level,String StudyField,String sexe, int age,int status) {
		super(id, login, password, name, fname, email, tel,status);		
		this.institution = institution;
		this.level = level;
		this.StudyField = StudyField;
		this.setAge(age);
		this.setSexe(sexe);
	}
	public Participant(){
		super();
	}
	
	public String getInstitution() {
		return institution;
	}
	public void setInstitution(String institution) {
		this.institution = institution;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getStudyField() {
		return StudyField;
	}
	public void setStudyField(String studyField) {
		StudyField = studyField;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSexe() {
		return sexe;
	}
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	
}
