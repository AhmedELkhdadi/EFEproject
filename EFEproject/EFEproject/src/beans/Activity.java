package beans;
import java.util.Date;

public class Activity {
	private String id ;
	private String name;
	private Speaker speaker;
	private String meetLink;
	private Date startDate;
	private Date endDate;
	private String startTime;
	private String endTime;
	
	public Activity(String id, String name, Speaker speaker ,Date startDate,Date endDate,String startTime,String endTime, String meetLink){
		this.id = id;
		this.name= name;
		this.startDate= startDate;
		this.endDate=endDate;
		this.speaker=speaker;
		this.meetLink = meetLink;
		this.startTime=startTime;
		this.endTime = endTime;
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
	public String getMeetLink() {
		return meetLink;
	}
	public void setMeetLink(String meetLink) {
		this.meetLink = meetLink;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Speaker getSpeaker() {
		return speaker;
	}
	public void setSpeaker_id(Speaker speaker) {
		this.speaker = speaker;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	
}
