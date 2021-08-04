package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import beans.Participant;



public class ParticipantDaoImpl implements ParticipantDao{

	private DaoFactory daoFactory;
	
	ParticipantDaoImpl(DaoFactory daoFactory){
		this.daoFactory = daoFactory;
	}
	public boolean addParticipant(Participant participant) {
		Connection conn = null;
		PreparedStatement prepStatement = null;
		
		try {
			conn = daoFactory.getConnection();

			prepStatement = conn.prepareStatement("INSERT INTO participants(id_p,login,password,name,fname,email,phone,level,institution,studyField,sexe,age,imagePath) Values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			prepStatement.setString(1, participant.getId());
			prepStatement.setString(2, participant.getLogin());
			prepStatement.setString(3, participant.getPassword());
			prepStatement.setString(4, participant.getName());
			prepStatement.setString(5, participant.getFname());
			prepStatement.setString(6, participant.getEmail());
			prepStatement.setString(7, participant.getTel());   				  
			prepStatement.setString(8, participant.getLevel());					//In radio <select> values sent are string and not ids,
			prepStatement.setString(9, participant.getInstitution());			//so we don't have to get them with a query later to show them
			prepStatement.setString(10, participant.getStudyField());
			prepStatement.setString(11, participant.getSexe() );
			prepStatement.setInt(12, participant.getAge() );
			prepStatement.setString(13,participant.getImage());
			prepStatement.executeUpdate();
			
			return true;
			
			}catch(SQLException e) {
				e.printStackTrace();
				return false;
			}
		
	}

	public boolean delete(Participant participant) {
		Connection conn = null;
		PreparedStatement query = null;
		String logToDel = participant.getLogin();
		
		try {
			conn= daoFactory.getConnection();
			query = conn.prepareStatement("DELETE FROM participants WHERE id=?");
			query.setString(1, logToDel);
			query.executeUpdate();
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	public boolean authenticate(Participant participant) {
		Connection conn = null;
		Statement query = null;

		String log = participant.getLogin();
		String pw = participant.getPassword();
		
		try {
			conn= daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet result = query.executeQuery("SELECT * FROM participants WHERE login='"+log+"' AND password='"+pw+"';");
			if(result.next() == false)
				return false;
			else {
				participant.setId(result.getString("id_p")); 
				participant.setName(result.getString("name"));
				participant.setFname(result.getString("fname"));
				participant.setStatus(3);
			}
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public Participant selectPart(String id) {
		Connection conn = null;
		Statement query = null;
		Participant participant = new Participant();
		try {
			conn= daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet result = query.executeQuery("SELECT * FROM participants WHERE id_p='"+id+"';");
			if(result.next() == false)
				return null;
			else {
				participant = new Participant(id,result.getString("name"),result.getString("fname"),result.getString("email"), result.getString("phone")
						, result.getString("institution"),result.getString("level"),result.getString("studyField"),result.getString("sexe")
						,result.getInt("age"),result.getString("imagePath"),3,result.getString("training"), result.getString("awards"), result.getString("techSkills")
						, result.getString("softSkills"),result.getString("langages"),result.getString("description"),result.getString("intrests")
						,result.getString("facebook"),result.getString("gitHub"),result.getString("linkedIn"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
		return participant;
	}
	

	public List<Participant> SelectAll() {
		Connection conn = null;
		Statement query = null;
		List<Participant> participants = new ArrayList<Participant>();			
		
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT * FROM participants");
			while(res.next()) {
				Participant part = new Participant(res.getString("id_p"), res.getString("name"), res.getString("fname"), res.getString("email"), res.getString("phone"),
													res.getString("institution"), res.getString("level"), res.getString("studyField"),res.getString("sexe"),
													res.getInt("age"),res.getString("imagePath"),3,res.getString("facebook"),res.getString("gitHub"),res.getString("linkedIn"));
				participants.add(part);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		
	}
		return participants;
	}
	public Map<String,String> getStatistics() {
		Connection conn = null;
		Statement query = null;
		Map<String,String> stats = new HashMap<String,String>();
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT sexe,COUNT(*) as count FROM participants GROUP BY sexe ORDER BY count DESC;");
			Map<String,Integer> genderStats = new HashMap<String,Integer>();
			while(res.next()) {
				genderStats.put(res.getString("sexe"), res.getInt("count"));
				}
			Gson gson = new Gson();
			stats.put("genderStats", gson.toJson(genderStats));
			res = query.executeQuery("SELECT level,COUNT(*) as count FROM participants GROUP BY level ORDER BY count DESC;");
			Map<String,Integer> levelStats = new HashMap<String,Integer>();
			while(res.next()) {
				levelStats.put(res.getString("level"), res.getInt("count"));
			}
			stats.put("levelStats", gson.toJson(levelStats));
			res = query.executeQuery("SELECT institution,COUNT(*) as count FROM participants GROUP BY institution ORDER BY count DESC;");
			Map<String,Integer> instStats = new HashMap<String,Integer>();
			while(res.next()) {
				instStats.put(res.getString("institution"), res.getInt("count"));
			}
			stats.put("instStats", gson.toJson(instStats));
			
			return stats;
			
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	public boolean modifyInfo(String id,String training, String awards, String techSkills, String softSkills
			, String langages,String description,String intrests,String email,String phone,String facebook,String gitHub,String linkedIn) {
		Connection conn = null;
		PreparedStatement prepStatement = null;
		
		try {
			conn = daoFactory.getConnection();
			prepStatement = conn.prepareStatement("UPDATE participants SET training=?, awards=?, techSkills=?, softskills=?, langages=?, description=? "
					+ ",intrests=? ,email= ?,phone=?,facebook =? ,gitHub=?,linkedIn=? Where id_p =? ");
			prepStatement.setString(1, training);
			prepStatement.setString(2, awards);
			prepStatement.setString(3, techSkills);
			prepStatement.setString(4, softSkills);
			prepStatement.setString(5, langages);
			prepStatement.setString(6, description);
			prepStatement.setString(7, intrests); 
			prepStatement.setString(8, email );
			prepStatement.setString(9, phone);
			prepStatement.setString(10, facebook);
			prepStatement.setString(11, gitHub);
			prepStatement.setString(12, linkedIn);
			prepStatement.setString(13, id);
			prepStatement.executeUpdate();
			
			return true;
			
			}catch(SQLException e) {
				e.printStackTrace();
				return false;
			}
	}
}
