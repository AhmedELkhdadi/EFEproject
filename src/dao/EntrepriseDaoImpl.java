package dao;

import beans.Entreprise;
import java.sql.*;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import com.google.gson.Gson;

public class EntrepriseDaoImpl implements EntrepriseDao{
	private DaoFactory daoFactory;
	private MessagesDao messagesDao;
	
	EntrepriseDaoImpl(DaoFactory daoFactory){
		this.daoFactory = daoFactory;
		this.messagesDao = daoFactory.getMessages();
	}
	public boolean addEntreprise(Entreprise enterprise) {
		Connection conn =null;
		PreparedStatement prepStatement = null;
		
		try {
			conn = daoFactory.getConnection();
			prepStatement = conn.prepareStatement("INSERT INTO entreprise(id_ent,name,description,slogan,email,domain,logo,bannerImage,location,representative) VALUES(?,?,?,?,?,?,?,?,?,?)");
			
			UUID uid= UUID.randomUUID();
			String id_ent = ""+ uid;
			enterprise.setId(id_ent);
			
			prepStatement.setString(1, id_ent);
			prepStatement.setString(2, enterprise.getName());
			prepStatement.setString(3, enterprise.getDescription());
			prepStatement.setString(4, enterprise.getSlogan());
			prepStatement.setString(5, enterprise.getEmail());
			prepStatement.setString(6, enterprise.getDomain());
			prepStatement.setString(7, enterprise.getLogo());
			prepStatement.setString(8, enterprise.getBannerImage());
			prepStatement.setString(9, enterprise.getLocation());
			prepStatement.setString(10, enterprise.getRep_id());
			prepStatement.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}	
		return true;
	}
	
	public Entreprise selectEntreprise(String id_r) {
		Connection conn = null;
		Statement query = null;
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet resEnt = query.executeQuery("SELECT * FROM entreprise WHERE representative='"+id_r+"';");
			if(resEnt.next() == false)
				return null;
			else {
				Entreprise ent = new Entreprise();
				ent.setRep_id(id_r);
				String stand_id = resEnt.getString("id_ent");
				ent.setId(stand_id);
				ent.setName(resEnt.getString("name"));
				ent.setDescription(resEnt.getString("description"));
				ent.setLogo(resEnt.getString("logo"));
				ent.setMeetLink(resEnt.getString("meetLink"));
				ent.setBannerImage(resEnt.getString("bannerImage"));
				ent.setLocation(resEnt.getString("location"));
				ent.setSlogan(resEnt.getString("slogan"));
				ent.setDomain(resEnt.getString("domain"));
				ent.setEmail(resEnt.getString("email"));
				ent.setMessages(messagesDao.getStandMessages(stand_id));
				return ent;
			}
		}catch(SQLException e) {
			e.printStackTrace();	
			return null;
		}
	}

	public boolean changeBanner(String bannerName,String stand) {
		Connection conn = null;
		Statement query = null;
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			query.executeUpdate("Update entreprise SET bannerImage='"+bannerName+"'Where id_ent='"+stand+"';");
			return true;
		}catch(SQLException e) {
			return false;
		}
	}

	public boolean changeLogo(String LogoName,String stand) {
		Connection conn = null;
		Statement query = null;
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			query.executeUpdate("Update entreprise SET logo='"+LogoName+"'Where id_ent='"+stand+"';");
			return true;
		}catch(SQLException e) {
			return false;
		}
	}
	
	public void changeMeetLink(String meetLink,String stand) {
		Connection conn = null;
		Statement query = null;
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			query.executeUpdate("Update entreprise SET meetLink='"+meetLink+"' WHERE id_ent='"+stand+"';");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Map<String,String> getStatistics(){
		Connection conn = null;
		Statement query = null;
		Map<String,String> stats = new HashMap<String,String>();
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT entreprise.name as name ,COUNT(*) as count FROM entreprise, resume WHERE resume.enterprise = entreprise.id_ent GROUP BY resume.enterprise ORDER BY count DESC;");
			Map<String,Integer> resumeStats = new HashMap<String,Integer>();
			while(res.next()) {
				resumeStats.put(res.getString("name"), res.getInt("count"));
				}
			Gson gson = new Gson();
			stats.put("resumeStats", gson.toJson(resumeStats));
			res = query.executeQuery("SELECT entreprise.name as name ,COUNT(*) as count FROM chatmessages,entreprise Where stand = id_ent GROUP BY stand ORDER BY count DESC;");
			Map<String,Integer> messagesStats = new HashMap<String,Integer>();
			while(res.next()) {
				messagesStats.put(res.getString("name"), res.getInt("count"));
			}
			stats.put("messagesStats", gson.toJson(messagesStats));
			return stats;
			
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
