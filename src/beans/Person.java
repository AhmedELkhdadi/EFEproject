package beans;

public abstract class Person {
	protected String id;
	protected String login;
	protected String password;
	protected String name;
	protected String fname;
	protected String email;
	protected String tel;
	protected int status;  //1-admin, 2-representative, 3-participant
	
	
	Person(String id,String login,String password,String name,String fname,String email,String tel,int status){
		this.id=id;
		this.login=login;
		this.password = password;
		this.name = name;
		this.status = status;
		this.fname =fname;
		this.email = email;
		this.tel = tel;
	}
	
	Person(String id,String name,String fname,String email,String tel,int status){
		this.id=id;
		this.status=status;
		this.name = name;
		this.fname =fname;
		this.email = email;
		this.tel = tel;
	}
	
	protected Person() {
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getFullName() {
		return (name +' '+ fname);
	}
}
