package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//D:\Dev88\workspace\jsp_88\WebContent\8_servlet 물리
// => D:\Dev88\workspace\jsp_88\8_servlet\

//D:\Dev88\workspace\jsp_88\src\servlet 물리
// => D:\Dev88\workspace\jsp_88\ 

@WebServlet("/PostEx1")
public class PostEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PostEx1() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("doGet() 메서드 실행");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
		System.out.println("doPost() 메서드 실행");
		
		// 한글 안 깨지도록 처리
		request.setCharacterEncoding("UTF-8");
		
		// jsp에서 넘어온 값을 읽어옴
		String strID = request.getParameter("userID");
		String strName = request.getParameter("userName");
		String strEmail = request.getParameter("userEmail");
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head><title>현재시간</title></head>");
		out.println("<body>");
		out.println("<h3>회원 페이지</h3>");
		out.println("id: " + strID + "<br>");
		out.println("id: " + strName + "<br>");
		out.println("id: " + strEmail + "<br>");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}

}
