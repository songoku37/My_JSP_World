package com.jspbook;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/hi") // .jsp가 아닌 /hi로 주소를 나타냄 (보안)
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 호출1"); // 저장후 웹브라우저를 리셋시키면 호출 된다
	}
	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("destory : 호출"); // 변경사항 저장할 때 전에 남아있던 내용 죽기전에 출력
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter(); // 잘 모르겠다
		out.println("<HTML>");
		out.println("<body>");
		out.println("<h1>안녕하세요</h1>");
		out.println("</body>");
		out.println("</HTML>");
		
	} // 실행되면 서비스 시킬 내용들

}
