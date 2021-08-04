package beans;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Message {
	
	private int id_message;
	private String message;
	private String writer_id;
	private String writer_name;
	private int writerStatus;
	private int privacy;
	private String id_stand;
	private String message_date;
	private int responseTo;
	private List<Message> responses;
	
	public Message(int id,String message, String writer_id,String writer_name,String stand,Date date,int privacy, int writerStatus) {
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/YYYY HH:mm:ss");
		this.id_message = id;
		this.message= message;
		this.writer_id = writer_id;
		this.writer_name = writer_name;
		this.id_stand = stand;
		this.message_date= formatter.format(date);
		this.privacy = privacy;
		this.writerStatus = writerStatus;
	}
	
	public int getId_message() {
		return id_message;
	}
	public void setId_message(int id_message) {
		this.id_message = id_message;
	}
	public String getWriter_id() {
		return writer_id;
	}
	public void setWriter_id(String writer) {
		this.writer_id = writer;
	}
	public String getId_stand() {
		return id_stand;
	}
	public void setId_stand(String id_stand) {
		this.id_stand = id_stand;
	}
	public String getMessage_date() {
		return message_date;
	}
	public void setMessage_date(String message_date) {
		this.message_date = message_date;
	}
	public int getResponseTo() {
		return responseTo;
	}
	public void setResponseTo(int responseTo) {
		this.responseTo = responseTo;
	}
	public List<Message> getResponses() {
		return responses;
	}
	public void setResponses(List<Message> responses) {
		this.responses = responses;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getPrivacy() {
		return privacy;
	}

	public void setPrivacy(int privacy) {
		this.privacy = privacy;
	}

	public String getWriter_name() {
		return writer_name;
	}

	public void setWriter_name(String writer_name) {
		this.writer_name = writer_name;
	}

	public int getWriterStatus() {
		return writerStatus;
	}

	public void setWriterStatus(int writerStatus) {
		this.writerStatus = writerStatus;
	}
}
