package dao;

import java.sql.*;
import java.util.*;

import beans.Institution;

public class InstitutionDaoImpl implements InstitutionDao {
	private DaoFactory daoFactory;
	
	InstitutionDaoImpl(DaoFactory daoFactory){
		this.daoFactory= daoFactory;
	}

	
	public List<Institution> SelectAll() {
		Connection conn= null;
		Statement query=null;
		List<Institution> instList = new ArrayList<Institution>();
		
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT * FROM institution");
			
			while(res.next())  {
				Institution instGotten = new Institution(res.getInt("id_inst"),res.getString("name"));
				instList.add(instGotten);
			}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		return instList;
	}
	
}
