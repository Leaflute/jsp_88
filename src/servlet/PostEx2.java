package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PostEx2")
public class PostEx2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PostEx2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("doGet() 실행");
		
		// 한글 안 깨지도록 처리
		request.setCharacterEncoding("UTF-8");
		
		// jsp에서 넘어온 값을 읽어옴
		String iSabun = request.getParameter("userSabun");
		String iName = request.getParameter("userName");
		int iAge = Integer.parseInt(request.getParameter("userAge"));
		int iGender = Integer.parseInt(request.getParameter("userGender"));
		String[] iHobbies = request.getParameterValues("userHobby");
		
		// response.setContentType("text/html; charset=UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head><title>현재시간</title></head>");
		out.println("<body>");
		out.println("<h3>회원 페이지</h3>");
		out.println("사번: " + iSabun + "<br>");
		out.println("이름: " + iName + "<br>");
		out.println("이메일: " + iAge + "<br>");
		if (iGender==1) {
			out.println("성별: 여자 <br>");
		} else {
			out.println("성별: 남자 <br>");
		}
		out.println("취미: ");
		if (iHobbies != null) { 
			for (int i = 0 ; i < iHobbies.length ; i++) {
				switch(iHobbies[i]) {
				case "1" : out.print(" 독서"); break;
				case "2" : out.print(" 음악감상"); break;
				case "3" : out.print(" 트래킹"); break;
				case "4" : out.print(" 영화감상"); break;
				case "5" : out.print(" 낚시"); break;
				}
			}
		}
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
		System.out.println("doPost() 실행");
		
	}

}
