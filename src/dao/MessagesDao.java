package dao;

import java.util.List;

import beans.Message;

public interface MessagesDao {
	List<Message> getStandMessages(String stand);
	Integer addMessage(String message,String person_id,String person_name, String stand_id,Integer response_to,int privacy,int person_status);
}
