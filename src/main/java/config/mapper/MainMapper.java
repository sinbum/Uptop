package config.mapper;

import org.apache.ibatis.annotations.Param;

public interface MainMapper {
	public int loginCheck(@Param("id") String id,@Param("password") String password);

	public int signIn(@Param("id")String id, @Param("password") String password,@Param("email") String email);

	public int makeChannel();
}
