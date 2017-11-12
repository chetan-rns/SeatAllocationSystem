package sessionpackage;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init(){
    	
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String register_no;
		register_no=request.getParameter("rno");
		LoginService loginService=new LoginService();
		boolean result=false;
		//PrintWriter out=response.getWriter();
		result = loginService.authenticate(register_no);
		boolean error=false;
		if(result==true){
			HttpSession session=request.getSession();
			session.setAttribute("user", register_no);
			RequestDispatcher rd=request.getRequestDispatcher("Success2.jsp");
			rd.include(request,response); //Servlet path
			return;
		}
		else{
			error=true;
			request.setAttribute("Error", error);
			RequestDispatcher rd=request.getRequestDispatcher("Login3.jsp");
			rd.include(request,response); //Servlet path
			return;
		}	
	}
}

