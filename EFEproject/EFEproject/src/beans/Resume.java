package beans;

public class Resume {
	private String id;
	private String path;
	private String p_id;
	private String p_name;
	private String ent_id;
	
	public Resume(String id, String path, String p_id,String p_name,String ent_id) {
		this.id= id;
		this.path= path;
		this.p_id= p_id;
		this.p_name=p_name;
		this.ent_id=ent_id;
	}
	public Resume() {
		
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getEnt_id() {
		return ent_id;
	}
	public void setEnt_id(String ent_id) {
		this.ent_id = ent_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	
}
