package week13;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet(urlPatterns="*.do", initParams= {@WebInitParam(name="config", value="/WEB-INF/commandHandler.properties")})
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		
		String command = request.getRequestURI();
		// command = /week13/main.do
		
		command = command.substring(request.getContextPath().length()+1);
		
		//Contextpath = /week14 command = main.do
		
		Object resultObj = null;
		
		if(type==null || type.equals("greeting")) {
			resultObj = "안녕하세요";
		} else if(type.equals("date")) {
			resultObj = new Date();
		} else {
			resultObj = "Invalid type";
		}
		
		request.setAttribute("result", resultObj);
		RequestDispatcher dispatcher = request.getRequestDispatcher("simpleView.jsp");
		dispatcher.forward(request, response);
	}
}
