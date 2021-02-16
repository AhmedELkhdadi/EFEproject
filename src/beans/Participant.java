package beans;


public class Participant extends Person {
	
	private int age;
	private String image;
	private String institution;
	private String level;
	private String StudyField;
	private String sexe;
	private String training;
	private String awards;
	private String techSkills;
	private String softSkills;
	private String langages;
	private String description;
	private String intrests;
	private String facebook;
	private String linkedIn;
	private String gitHub;
	
	
	public Participant(String id, String name, String fname, String email, String tel
			, String institution,String level,String StudyField,String sexe, int age,String image,int status,String facebook,String gitHub,String linkedIn) {
		super(id, null, null, name, fname, email, tel,status);		
		this.institution = institution;
		this.level = level;
		this.StudyField = StudyField;
		this.setAge(age);
		this.setSexe(sexe);
		this.setGitHub(gitHub);
		this.setFacebook(facebook);;
		this.setLinkedIn(linkedIn);
		this.setImage(image);
	}
	public Participant(String id, String name, String fname, String email, String tel
			, String institution,String level,String StudyField,String sexe, int age,String image,int status,
			String training, String awards, String techSkills, String softSkills,String langages,String description
			,String intrests, String facebook, String gitHub, String linkedIn) {
		super(id, null, null, name, fname, email, tel,status);		
		this.institution = institution;
		this.level = level;
		this.StudyField = StudyField;
		this.setAge(age);
		this.setSexe(sexe);
		this.setTraining(training);
		this.setAwards(awards);
		this.setTechSkills(techSkills);
		this.setSoftSkills(softSkills);
		this.setLangages(langages);
		this.setDescription(description);
		this.setIntrests(intrests);
		this.setGitHub(gitHub);
		this.setFacebook(facebook);;
		this.setLinkedIn(linkedIn);
		this.setImage(image);
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
	public String getTraining() {
		return training;
	}
	public void setTraining(String training) {
		this.training = training;
	}
	public String getAwards() {
		return awards;
	}
	public void setAwards(String awards) {
		this.awards = awards;
	}
	public String getTechSkills() {
		return techSkills;
	}
	public void setTechSkills(String techSkills) {
		this.techSkills = techSkills;
	}
	public String getSoftSkills() {
		return softSkills;
	}
	public void setSoftSkills(String softSkills) {
		this.softSkills = softSkills;
	}
	public String getLangages() {
		return langages;
	}
	public void setLangages(String langages) {
		this.langages = langages;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getIntrests() {
		return intrests;
	}
	public void setIntrests(String intrests) {
		this.intrests = intrests;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getLinkedIn() {
		return linkedIn;
	}
	public void setLinkedIn(String linkedIn) {
		this.linkedIn = linkedIn;
	}
	public String getGitHub() {
		return gitHub;
	}
	public void setGitHub(String gitHub) {
		this.gitHub = gitHub;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
}
