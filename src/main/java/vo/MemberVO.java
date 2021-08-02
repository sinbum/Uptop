package vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MemberVO {
	int 	num;
	String id;
	String password;
	String	email;	
}
