package dao;

import java.util.Map;

import beans.Entreprise;

public interface EntrepriseDao {
	public boolean addEntreprise(Entreprise enterprise);
	public Entreprise selectEntreprise(String id_r);
	public boolean changeBanner(String bannerName,String stand);
	public boolean changeLogo(String LogoName,String stand);
	public void changeMeetLink(String meetLink, String stand);
	public Map<String,String> getStatistics();
}
