package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.lang.Integer;
import beans.Message;

public class MessagesDaoImpl implements MessagesDao{
	private DaoFactory daoFactory;
	
	MessagesDaoImpl(DaoFactory daoFactory){
		this.daoFactory = daoFactory;
	}
	
	public List<Message> getStandMessages(String stand) {
		List<Message> mainMessages = new ArrayList<Message>();
		int responseTo = 0;
		Connection conn = null;
		Statement query = null;
	
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet msgRes = query.executeQuery("SELECT * FROM chatmessages WHERE stand='"+stand+"' ORDER by responseTo, date "); //  so we can get main messages first (responseTo NULL) and then affect responses to messages already gotten
			while(msgRes.next()) {	
				responseTo = msgRes.getInt("responseTo") ;			//return 0 when column is null
				if(msgRes.wasNull()) {      // was null returns true if last column read is null;
					Message main = new Message(msgRes.getInt("id"),msgRes.getString("message"),msgRes.getString("person_id"),msgRes.getString("person_name"),stand,msgRes.getTimestamp("date"),msgRes.getInt("privacy"),msgRes.getInt("person_status"));
					main.setResponses(new ArrayList<Message>());
					mainMessages.add(main);
				}
				else {
					Message response = new Message(msgRes.getInt("id"),msgRes.getString("message"),msgRes.getString("person_id"),msgRes.getString("person_name"),stand,msgRes.getTimestamp("date"),msgRes.getInt("privacy"),msgRes.getInt("person_status"));
					for(Message main : mainMessages) {
						if(main.getId_message() == responseTo) {
							main.getResponses().add(response);
							break;
						}
					}
				}
			}
			return mainMessages;
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public Integer addMessage(String message,String person_id,String person_name, String stand_id,Integer responseTo,int privacy,int person_status) {
		Connection conn = null;
		PreparedStatement query = null;
		try {
			conn = daoFactory.getConnection();
			query = conn.prepareStatement("Insert INTO chatmessages(message,person_id,person_name,stand,responseTo,privacy,person_status) Values(?,?,?,?,?,?,?);"
					,Statement.RETURN_GENERATED_KEYS);
			query.setString(1,message);
			query.setString(2,person_id);
			query.setString(3,person_name);
			query.setString(4,stand_id);
			if(responseTo == null)
				query.setNull(5, java.sql.Types.INTEGER);  // setNull need to have the sql type it is going to insert null into 
			else
				query.setInt(5, responseTo.intValue());
			query.setInt(6,privacy);
			query.setInt(7, person_status);
			if(query.executeUpdate()!= 0) {
				ResultSet keys = query.getGeneratedKeys();
				if(keys.next()) {
					return keys.getInt(1);
				}
				else
					return 0;
			}
			else
				return 0;
		}catch(SQLException e){
			e.printStackTrace();
			return 0;
		}
	}

}
