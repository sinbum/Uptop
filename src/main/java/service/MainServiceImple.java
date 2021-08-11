package service;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import config.mapper.MainMapper;
import vo.BoardChannelVO;
import vo.BoardVO;
import vo.MemberVO;


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
					int channel_num, String member_id_fk) {
		return mainmapper.makeBoardDo(board_firstkeyword, board_secondkeyword, board_name, board_content, channel_num,member_id_fk);
			}
	
	@Override
	public List<BoardChannelVO> getChannelList(String memberId){

		return mainmapper.getChannelList(memberId);
	}

	public MemberVO getMemberDetail(String sessionId) {
		
		return mainmapper.getMemberDetail(sessionId);
	}

	public List <BoardVO> getBoardlist(String sessionId) {
		
		return mainmapper.getBoardlist(sessionId);
	}

	public void themeChange(String theme, HttpServletRequest request, HttpServletResponse response) {
		Cookie themeCookie = new Cookie("theme",theme);
		System.out.println(themeCookie.getValue());
		response.addCookie(themeCookie);
		try {
			response.sendRedirect("/mypage");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
	}


	


	
}
