package beans;

public class Speaker {
	private String id;
	private String name;
	private String fname;
	private String description;
	private String image;
	
	public Speaker(String id,String name,String fname,String description,String image){
		this.id = id;
		this.name = name;
		this.fname =fname;
		this.description = description;
		this.image = image;
	}
	
	public Speaker() {
		
	}

	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}	
}
