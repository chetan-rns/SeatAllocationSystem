package sessionpackage;
import java.sql.*;
public class LoginService{
	ResultSet rs;
	Statement st;
	public boolean authenticate(String register_no){
		DBMSconection.establish_connection();
		Connection con=DBMSconection.getCon();
		if(register_no == null || register_no.isEmpty())
			return false;
		else{
			int flag=0;
			String query="Select * from student";
			try{
				st=con.createStatement();
				rs=st.executeQuery(query);
				flag=0;
				while(rs.next()){
					//System.out.println(rs.getObject(1)+" "+rs.getObject(2)+" "+rs.getObject(3)+" "+rs.getObject(4)+" "+rs.getObject(5)+" ");
					if(rs.getString(4).equals(register_no)){
						flag=1;
						break;
					}
				}
				st.close();
			}
			catch(Exception e){
				
			}
			System.out.print(flag);
			if(flag==1)return true;
			else return false;
		}	
	}
}






