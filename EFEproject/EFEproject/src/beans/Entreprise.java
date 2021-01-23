package beans;

import java.util.List;

public class Entreprise {
	private String id;
	private String name;
	private String logo;
	private String bannerImage;
	private String slogan;
	private String description;
	private String location;
	private String meetLink;
	private String email;
	private String domain;
	private String Rep_id;  // this will be received from Rep.getId()
	private List<Message> messages;
	
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
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String text) {
		this.description = text;
	}
	public String getMeetLink() {
		return meetLink;
	}
	public void setMeetLink(String meetLink) {
		this.meetLink = meetLink;
	}
	public String getRep_id() {
		return Rep_id;
	}
	public void setRep_id(String rep_id) {
		Rep_id = rep_id;
	}
	public String getBannerImage() {
		return bannerImage;
	}
	public void setBannerImage(String bannerImage) {
		this.bannerImage = bannerImage;
	}
	public String getSlogan() {
		return slogan;
	}
	public void setSlogan(String slogan) {
		this.slogan = slogan;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public List<Message> getMessages() {
		return messages;
	}
	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}
	
}
