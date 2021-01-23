package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import beans.Resume;

public class ResumeDaoImpl implements ResumeDao {
	private DaoFactory daoFactory;
	ResumeDaoImpl(DaoFactory daoFactory){
		this.daoFactory = daoFactory;
	}
	@Override
	public List<Resume> getStandResumes(String stand_id) {
		Connection conn = null;
		Statement query = null;
		
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet resumesRes = query.executeQuery("Select * from resume Where enterprise='"+stand_id+"';");
			List<Resume> resumeList = new ArrayList<Resume>();
			while(resumesRes.next()) {
				Resume cvGotten = new Resume(resumesRes.getString("id_resume"), resumesRes.getString("path"), resumesRes.getString("participant"), resumesRes.getString("participant_name"), resumesRes.getString("enterprise"));
				resumeList.add(cvGotten);
			}
			if(resumeList.size() == 0)
				return null;
			else
				return resumeList;
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Resume cvAlreadySent(String stand_id,String p_id) {
		Connection conn = null;
		Statement query = null;
		
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet resumeRes = query.executeQuery("SELECT * from resume WHERE enterprise='"+stand_id+"' AND participant='"+p_id+"';");
			if(!resumeRes.next() ) {
				return null;
			}else {
				Resume resume = new Resume();
				resume.setPath(resumeRes.getString("path"));
				resume.setId(resumeRes.getString("id_Resume"));
				return resume;
			}	
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	public boolean addResume(String cvId,String path,String stand_id,String p_id,String p_name) {
		Connection conn = null;
		Statement query = null;
		
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			query.executeUpdate("INSERT INTO resume Values('"+cvId+"','"+path+"','"+p_id+"','"+stand_id+"','"+p_name+"')");
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}	
	}
	public boolean changePath(String resumeId,String newPath) {
		Connection conn = null;
		Statement query = null;
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			query.executeUpdate("UPDATE resume SET path='"+newPath+"' WHERE id_resume='"+resumeId+"';");
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}	
	}
}
