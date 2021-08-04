package dao;

import java.util.List;
import java.util.Map;

import beans.Participant;

public interface ParticipantDao {
	boolean addParticipant(Participant participant);
	boolean delete(Participant participant);
	boolean authenticate(Participant participant);
	public Participant selectPart(String id);
	List<Participant> SelectAll();
	Map<String,String> getStatistics();
	public boolean modifyInfo(String id,String training, String awards, String techSkills
			, String softSkills, String langages,String description,String intrests,String email,String phone,String facebook,String gitHub,String linkedIn);
}
