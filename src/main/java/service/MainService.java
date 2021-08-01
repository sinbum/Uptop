package service;

public interface MainService {
	
	public int loginCheck(String id, String password) ;

	public int signIn(String id, String password, String email) ;

	public int makeChannel() ;

}
