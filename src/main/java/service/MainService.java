package service;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import vo.BoardChannelVO;

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
			@Param("channel_num")int channel_num			
			);	
	
	
	public List<BoardChannelVO> getChannelList(@Param("memberId") String memberId);


}
