package service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;

import vo.BoardChannelVO;
import vo.BoardVO;
import vo.MemberVO;

public interface MainService {
	
	public int loginCheck(String id, String password) ;

	public int signIn(String id, String password, String email) ;

	public int makeChannel(
			@Param("channel_name") String channel_name,
			@Param("channel_info") String channel_info,
			@Param("channel_category") String channel_category,
			@Param("member_id_fk") String member_id_fk
			) ;
	
	public int makeBoardDo(
			@Param("board_firstkeyword")String board_firstkeyword,
			@Param("board_secondkeyword")String board_secondkeyword,
			@Param("board_name")String board_name,
			@Param("board_content")String board_content,
			@Param("channel_num")int channel_num,
			@Param("member_id_fk")String member_id_fk
			);	
	
	
	public List<BoardChannelVO> getChannelList(@Param("memberId") String memberId);
	
	public MemberVO getMemberDetail(String sessionId);
	
	public List<BoardVO> getBoardlist(String sessionId);

	public void themeChange(String theme, HttpServletRequest request, HttpServletResponse response);
	

}
