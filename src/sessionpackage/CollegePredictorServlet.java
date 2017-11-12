package sessionpackage;
import java.util.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CollegePredictorServlet")
public class CollegePredictorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CollegePredictorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		int rank=(int)Integer.parseInt(request.getParameter("rno"));
		System.out.print(rank);
		HashMap<String,Integer> hm=new HashMap<String,Integer>();
		String[] college=new String[5];
		hm.put("IITB",100);
		hm.put("IITD",150);
		hm.put("IITM",200);
		hm.put("IITKGP",300);
		hm.put("IITK",400);
		int i=0;
		 for(Map.Entry<String,Integer> entry:hm.entrySet()){    
		        String coll=entry.getKey();  
		        Integer rank1=entry.getValue();  
		        if(rank<=rank1){
		        	college[i]=coll;
		        	i++;
		        }
		    }   
		boolean check=true;
		session.setAttribute("colleges", college);
		session.setAttribute("size",i);
		session.setAttribute("check",check);
		RequestDispatcher rd=request.getRequestDispatcher("CollegePredictor.jsp");
		rd.include(request, response);
	}
}
