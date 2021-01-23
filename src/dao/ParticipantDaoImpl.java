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
			UUID uid = UUID.randomUUID();
			String id = "" + uid;
			prepStatement = conn.prepareStatement("INSERT INTO participants Values(?,?,?,?,?,?,?,?,?,?,?,?)");
			prepStatement.setString(1, id);
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
	
	public boolean authentify(Participant participant) {
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
				participant.setEmail(result.getString("email"));
				participant.setTel(result.getString("phone"));
				participant.setInstitution(result.getString("institution"));
				participant.setLevel(result.getString("level"));
				participant.setStudyField(result.getString("studyField"));
				participant.setSexe(result.getString("sexe"));
				participant.setAge(result.getInt("age"));
				participant.setStatus(3);
				
				
				//TODO: this code is for when I start using lvl and inst id's in participants table, must change  addparticipant() when I do that
//				int instId = result.getInt("institution");
//				try {											// we get institution id, then execute an sql query to get matching name.
//					Statement InstiQuery = conn.createStatement();
//					ResultSet InstResult = InstiQuery.executeQuery("SELECT name WHERE id_inst='"+ instId +"';");
//					InstResult.next();
//					
//					participant.setInstitution(InstResult.getString("name"));
//				}catch(SQLException e) {
//					e.printStackTrace();
//				}
//				
//				int levelId = result.getInt("level");
//				try {											// we get level id, then execute an sql query to get matching name.
//					Statement levelQuery = conn.createStatement();
//					ResultSet levelResult = levelQuery.executeQuery("SELECT name WHERE id_level='"+ levelId +"';");
//					levelResult.next();
//					
//					participant.setLevel(levelResult.getString("name"));
//				}catch(SQLException e) {
//					e.printStackTrace();
//				}
				
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
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
				Participant part = new Participant(res.getString("id_p"),res.getString("login"), res.getString("password"), res.getString("name"), res.getString("fname"), res.getString("email"), res.getString("phone"),
													res.getString("institution"), res.getString("level"), res.getString("studyField"),res.getString("sexe"),res.getInt("age"),3);
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
	
}
