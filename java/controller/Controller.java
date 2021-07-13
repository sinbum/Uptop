package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boards.BoardsDAO;
import login.LoginDAO;

@WebServlet("/")
public class Controller extends HttpServlet{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String boards_list="객체";
	
	/*  //로그인 세션을 확인하는 부분.
	if(request.getSession().getAttribute("id")==null) {
		request.setAttribute("section", "/login/login.jsp");
		request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}
	*/
	
	String url=request.getRequestURI();
	System.out.println("현재 url : "+ url);
	//url을 /단위로 스플릿하여 배열객체에 담는다.
	String[] urls=url.split("/");
	/* System.out.println("URL을 스플릿한 값 : "+ urls[1]); */
	//page 초기화
	String page="";
	
	
	if(urls.length<2) {
		page="view/";
		page+="section.jsp";
		System.out.println("기본페이지"+page);
	}else if(urls[1].trim().equals("index")) {
		//인덱스에서의 웹 url은 실질적으로 /WEB-INF/index/section.jsp
		System.out.println("index들어옴");
			page="view/";
			page+="section.jsp";
			BoardsDAO bd =new BoardsDAO();
			List list = bd.getlist();			
			request.setAttribute("boards",list);

		}else if(urls[1].trim().equals("board")) {
		//인덱스에서의 웹 url은 실질적으로 /WEB-INF/board/section.jsp
			page="board/";
			page+="board.jsp";
			
			BoardsDAO bd =new BoardsDAO();
			List list = bd.getlist();			
			request.setAttribute("boards",list);

		}else if(urls[1].trim().equals("login")) {
			
			
		//인덱스에서의 웹 url은 실질적으로 /WEB-INF/login/section.jsp
			if(urls.length<3) {				
				page="/login/";
				page+="login.jsp";
			}else if(urls[2].equals("login.do")) {
				/*로그인처리 프로세스*/	
					LoginDAO logindao=new LoginDAO();
					int result=logindao.loginCheck
					(request.getParameter("id"), request.getParameter("password"));
				/*데이터베이스 접속후 값이 동일하면 1을 반환 하여 1값일 경우 로그인 된것으로 확인하고 세션속성의 id값을 현재 id로 설정.*/
					if(result==1) {
						request.getSession().setAttribute("id", request.getParameter("id"));
					}
					page="view/";
					page+="section.jsp";
					System.out.println("login.do 실행 page uri값을 출력 : " + page) ;
			}else if(urls[2].equals("logout")) {
					request.getSession().invalidate();
					page="view/";
					page+="section.jsp";
			}
		}
	System.out.println("디스패쳐 실행");
	System.out.println("reqeust를 설정하기전 uri확인 page값을 출력 : " + page) ;
	request.setAttribute("section", page);
	request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	
}	

}
