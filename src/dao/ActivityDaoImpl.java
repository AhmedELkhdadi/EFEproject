package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import beans.Activity;
import beans.Speaker;


public class ActivityDaoImpl implements ActivityDao {

	private DaoFactory daoFactory;
	ActivityDaoImpl(DaoFactory daoFactory){
		this.daoFactory = daoFactory;
	}
	public List<Activity> SelectAll() {
		Connection conn= null;
		Statement query=null;
		List<Activity> ActivityList = new ArrayList<Activity>();
		
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT * FROM activities ORDER BY startDate");
			SimpleDateFormat formatter = new SimpleDateFormat("HH:mm"); 
			
			while(res.next())  {
				String speaker_id = res.getString("speaker_id");
				if(speaker_id == null) {
					Activity ActivityGotten = new Activity(res.getString("id"),res.getString("name"),null,res.getTimestamp("startDate"),res.getTimestamp("endDate"),formatter.format(res.getTimestamp("startDate")),formatter.format(res.getTimestamp("endDate")),res.getString("meetLink"));
					ActivityList.add(ActivityGotten);
				}
				else {
					Statement querySpeaker = null;
					Speaker speaker = new Speaker();
					try {
						querySpeaker = conn.createStatement();
						ResultSet speakerRes = querySpeaker.executeQuery("SELECT * FROM speakers WHERE id='"+ speaker_id +"';");
						
						if(speakerRes.next()==true) {
						speaker.setId(speakerRes.getString("id"));
						speaker.setDescription(speakerRes.getString("description"));
						speaker.setName(speakerRes.getString("name"));
						speaker.setFname(speakerRes.getString("Fname"));
						speaker.setImage(speakerRes.getString("image"));
						}
						}catch(SQLException e) {
							e.printStackTrace();
						}
					Activity ActivityGotten = new Activity(res.getString("id"),res.getString("name"),speaker,res.getTimestamp("startDate"),res.getTimestamp("endDate"),formatter.format(res.getTimestamp("startDate")),formatter.format(res.getTimestamp("endDate")),res.getString("meetLink"));
					ActivityList.add(ActivityGotten);
				}
			}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		return ActivityList;
	}
	public List<Activity> SelectDayActivities(int day) {
		Connection conn= null;
		Statement query=null;
		List<Activity> ActivityList = new ArrayList<Activity>();
		
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT * FROM activities WHERE day='"+day+"' ORDER BY startDate");
			
			while(res.next())  {
				SimpleDateFormat formatter = new SimpleDateFormat("HH:mm"); 
				String speaker_id = res.getString("speaker_id");
				if(speaker_id == null) {
					Activity ActivityGotten = new Activity(res.getString("id"),res.getString("name"),null,res.getTimestamp("startDate"),res.getTimestamp("endDate"),formatter.format(res.getTimestamp("startDate")),formatter.format(res.getTimestamp("endDate")),res.getString("meetLink"));
					ActivityList.add(ActivityGotten);
				}
				else {
					Statement querySpeaker = null;
					Speaker speaker = new Speaker();
					try {
						querySpeaker = conn.createStatement();
						ResultSet speakerRes = querySpeaker.executeQuery("SELECT * FROM speakers WHERE id='"+ speaker_id +"';");
						
						if(speakerRes.next()==true) {
						speaker.setId(speakerRes.getString("id"));
						speaker.setDescription(speakerRes.getString("description"));
						speaker.setName(speakerRes.getString("name"));
						speaker.setFname(speakerRes.getString("Fname"));
						speaker.setImage(speakerRes.getString("image"));
						}
						}catch(SQLException e) {
							e.printStackTrace();
						}
					Activity ActivityGotten = new Activity(res.getString("id"),res.getString("name"),speaker,res.getTimestamp("startDate"),res.getTimestamp("endDate"),formatter.format(res.getTimestamp("startDate")),formatter.format(res.getTimestamp("endDate")),res.getString("meetLink"));
					ActivityList.add(ActivityGotten);
				}
			}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		return ActivityList;
	}
	
	public Long getStartInMs() {
		Connection conn = null;
		Statement query = null;
		
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT startDate FROM activities ORDER BY startDate ASC LIMIT 1; ");
			if(res.next()) {
				Date date = res.getTimestamp("startDate");
				Long timeInMs =  date.getTime();
				return timeInMs;
				}
			else {
				return null;
			}
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	@Override
	public int eventState() {
		Connection conn = null;
		PreparedStatement query = null;
		
		try {
			conn = daoFactory.getConnection();
			query = conn.prepareStatement("SELECT startDate,endDate FROM activities ORDER BY startDate",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			ResultSet res = query.executeQuery();
			Date event_start = null;
			Date event_end = null;
			if(res.first()){
				event_start = res.getTimestamp("startDate");
				}
			if(res.last()) {
				event_end = res.getTimestamp("endDate");
			}
			Date date = new Date();
			if(date.before(event_start)) {
				return 0;
			}else {
				if(date.after(event_start) && date.before(event_end)) {
					return 1;
				}
				else
					return 2;
			}
		}catch(SQLException e) {
			e.printStackTrace();
			return 3;
		}
	}
	@Override
	public Activity currentActivity() {
			Connection conn = null;
			Statement query = null;
			
			try {
				conn = daoFactory.getConnection();
				query = conn.createStatement();
				ResultSet res = query.executeQuery("SELECT * FROM activities WHERE startDate < NOW() AND endDate > NOW()");
				if(res.next()) {
					String speaker_id = res.getString("speaker_id") ;
					if(speaker_id != null) {
						Statement querySpeaker = null;
						try {
							querySpeaker = conn.createStatement();
							ResultSet speakerRes = querySpeaker.executeQuery("SELECT * FROM speakers WHERE id='"+ speaker_id +"';");
							if(speakerRes.next()) {
								Speaker speaker = new Speaker(speakerRes.getString("id"),speakerRes.getString("name"),speakerRes.getString("Fname"),speakerRes.getString("description"),speakerRes.getString("image"));
								Activity activity = new Activity(res.getString("id"),res.getString("name"),speaker,res.getTimestamp("startDate"),res.getTimestamp("endDate"),null,null,res.getString("meetLink"));
								return activity;
							}else {
								return null;
							}
							}catch(SQLException e) {
								e.printStackTrace();
								return null;
							}
					}else {
						Activity activity = new Activity(res.getString("id"),res.getString("name"),null,res.getTimestamp("startDate"),res.getTimestamp("endDate"),null,null,res.getString("meetLink"));
						return activity;
					}
				}else {
					return null;
				}
				
			}catch(SQLException e) {
				e.printStackTrace();
				return null;				
			}
	}
}
	

