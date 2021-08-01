package service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import config.mapper.MainMapper;


@Service
public class MainServiceImple implements MainService{
	
	@Autowired
	private MainMapper mainmapper;	
	
	@Override
	public int loginCheck(String id, String password) {
		return mainmapper.loginCheck(id, password);
	}

	@Override
	public int signIn(String id, String password, String email) {
		return mainmapper.signIn(id, password, email);
	}

	@Override
	public int makeChannel() {
		return 0;
	}


	
}
