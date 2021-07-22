package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HelloServlet() {
        super();
    }
    
    /*
     * HttpServletRequest: 클라이언트의 요청정보를 저장
     * HttpServletResponse: 응답정보를 저장
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("doGet() 메서드 호출");
		
		response.setContentType("text/html; charset=UTF-8");	// jsp파일의 최상단
		
		/*
		 * PrintWriter : 웹브라우저에 출력(html)하기 위함 출력 스트림 클래스
		 * 서블릿이 자바타입이기 때문에 응답을 위한 html코드가 없으므로 해당 객체로 출력 스트림을 구성
		 */
		PrintWriter out = response.getWriter();
		
		// 출력스트림 PrintWriter의 print() 메서드를 이용해 html태그를 만들어 웹 브라우저에 출력
		out.println("<html>");
		out.println("<head><title>현재시간</title></head>");
		out.println("<body>");
		out.println("<h3>첫 서블릿 페이지</h3>");
		out.println("현재 시간은 " + new Date() + " 입니다.");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		System.out.println("doPost() 메서드 호출");
		doGet(request, response);
		
	}

}
