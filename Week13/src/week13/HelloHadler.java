package week13;

import javax.servlet.http.*;

public class HelloHadler implements CommandHandler{
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setAttribute("command", "안녕하세요");
		return "viewResult.jsp";
	}
	
}
