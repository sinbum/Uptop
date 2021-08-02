package service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import config.mapper.MainMapper;
import vo.BoardChannelVO;


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
	public int makeChannel(
			String channel_name, 
			String channel_info, 
			String channel_category,
			String member_id_fk) {
		return mainmapper.makeChannel(channel_name, channel_info, channel_category, member_id_fk);
	}

	public int makeBoardDo(			
					String board_firstkeyword,
					String board_secondkeyword,
					String board_name,
					String board_content,
					int channel_num) {
		return mainmapper.makeBoardDo(board_firstkeyword, board_secondkeyword, board_name, board_content, channel_num);
			}
	
	@Override
	public List<BoardChannelVO> getChannelList(String memberId){

		return mainmapper.getChannelList(memberId);
	}

	


	
}
