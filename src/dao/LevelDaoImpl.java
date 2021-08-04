package dao;

import java.sql.*;
import java.util.*;

import beans.Level;

public class LevelDaoImpl implements LevelDao {
	private DaoFactory daoFactory;
	
	LevelDaoImpl(DaoFactory daoFactory){
		this.daoFactory= daoFactory;
	}

	
	public List<Level> SelectAll() {
		Connection conn= null;
		Statement query=null;
		List<Level> lvlsList = new ArrayList<Level>();
		
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT * FROM levels");
			
			while(res.next())  {
				Level lvlGotten = new Level(res.getInt("id_level"),res.getString("name"));
				lvlsList.add(lvlGotten);
			}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		return lvlsList;
	}
	
}
