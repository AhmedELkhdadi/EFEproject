package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Speaker;

public class SpeakerDaoImpl implements SpeakerDao {
private DaoFactory daoFactory;
	
	SpeakerDaoImpl(DaoFactory daoFactory){
		this.daoFactory = daoFactory;
	}
	public List<Speaker> SelectAll() {
		Connection conn= null;
		Statement query=null;
		List<Speaker> speakerList = new ArrayList<Speaker>();
		
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT * FROM speakers");
			
			while(res.next())  {
				Speaker speakerGotten= new Speaker(res.getString("id"),res.getString("name"),res.getString("fname"),res.getString("description"),res.getString("image"));
				speakerList.add(speakerGotten);
			}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		return speakerList;
	}
	
}
