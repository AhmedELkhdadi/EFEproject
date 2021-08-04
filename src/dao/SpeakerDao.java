package dao;
import beans.Speaker;
import java.util.List;

public interface SpeakerDao {
	
	public List<Speaker> SelectAll();
	boolean addSpeaker(Speaker speaker);
	

}
