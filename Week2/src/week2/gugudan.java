package week2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gugudan")
public class gugudan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public gugudan() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html; charset=utf-8");
//		int num = Integer.parseInt(request.getParameter("dan"));
//		PrintWriter out = response.getWriter();
//		out.println("<html><body>");
//		for(int i=1; i<10; i++) {
//			out.println(num * i);	
//		}
//		out.println("</body></html>");
//		out.close();
		response.setContentType("text/html; charset=utf-8");
		int num = Integer.parseInt(request.getParameter("dan"));
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h3>구구단 "+num+" 단</h3>");
		for(int i=1; i<10; i++) {
			out.println(num + "*" + i + "=" + num*i);
			out.println("<br>");
		}
		out.println("</body></html>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
