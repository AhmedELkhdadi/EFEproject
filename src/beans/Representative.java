package beans;

public class Representative extends Person {
	
	public Entreprise entreprise;
	private Boolean approved;
	private String message;
	private Boolean seen;
	
	public Representative(String id, String login, String password, String name, String fname, String email, String tel
			,Entreprise ent, Boolean approved, String message, Boolean seen,int status) {
		
		super(id, login, password, name, fname, email, tel,status);
		this.entreprise = ent;
		this.approved = approved;
		this.message = message;
		this.seen = seen;
	}
	public Representative(String id, String name ,String fname, String Email, String phone,Entreprise ent,int status) {
		super(id, name , fname, Email, phone,status);
		this.entreprise = ent;
	}
	public Representative(){
		super();
	}

	public Boolean isApproved() {
		return approved;
	}
	public void setApproved(Boolean approved) {
		this.approved = approved;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public boolean isSeen() {
		return seen;
	}
	public void setSeen(boolean seen) {
		this.seen = seen;
	}

	public Entreprise getEntreprise() {
		return entreprise;
	}
	
	
}
