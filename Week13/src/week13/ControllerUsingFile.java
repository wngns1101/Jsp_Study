package week13;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

/**
 * Servlet implementation class ControllerUsingFile
 */
@WebServlet(urlPatterns = "*.do", initParams = {@WebInitParam(name = "config", value = "/WEB-INF/commandHandler.properties")})
public class ControllerUsingFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
	
	public void init(ServletConfig config) throws ServletException{
		String configFile = config.getInitParameter("config");
		Properties prop = new Properties();
		String configFilePath = config.getServletContext().getRealPath(configFile);
		
		try(FileInputStream fis = new FileInputStream(configFilePath)){
			prop.load(fis);
		} catch(Exception e) {
			throw new ServletException(e);
		}
		
	
	Iterator<Object> keyIter = prop.keySet().iterator();
	
	while(keyIter.hasNext()) {
		String command = (String) keyIter.next();
		String handlerClassName = prop.getProperty(command);
		
		try {
			Class<?> HandlerClass = Class.forName(handlerClassName);
			CommandHandler handlerInstance = (CommandHandler) HandlerClass.newInstance();
			commandHandlerMap.put(command, handlerInstance);
		} catch(ClassNotFoundException | InstantiationException | IllegalAccessException e) {
			throw new ServletException(e);
		}
	}
	}
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerUsingFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String command = request.getRequestURI();
		command = command.substring(request.getContextPath().length()+1);
		CommandHandler handler = commandHandlerMap.get(command);
		String viewPage = null;
		
		try {
			viewPage = handler.process(request, response);
		}catch(Exception e) {
			throw new ServletException(e);
		}
		
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage+".jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
