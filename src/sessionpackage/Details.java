package sessionpackage;
//import sessionpackage.DBMSconection;
import java.sql.*;
public class Details extends LoginService{
	static Connection con=DBMSconection.getCon();
	public static String getName(String register_no){
		String name="Chetan";
		String query="Select student_name from seatallocationsystem.student where regno = ? ";
		try{
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, register_no);
			ResultSet rs=ps.executeQuery();  //Do not give query inside executeQuery()
			rs.next();
			name=rs.getString(1);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return name;
	}
	public static String getFather(String register_no){
		String fname="No such student exists!!";
		String query="Select father_name from seatallocationsystem.student where regno= ? ";
		try{
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, register_no);
			ResultSet rs=ps.executeQuery();
			rs.next();
			fname=rs.getString(1);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return fname;
	}
	public static String getDOB(String register_no){
		String dob="No such student exists!!";
		String query="Select dob from seatallocationsystem.student where regno=?";
		try{
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, register_no);
			ResultSet rs=ps.executeQuery();
			rs.next();
			dob=rs.getString(1);
		}
		catch(Exception e){
			return "No such student exists!!";
		}
		return dob;
	}
	public static int getRank(String register_no){
		int rank=0;
		String query="Select rank from seatallocationsystem.student where regno=?";
		try{
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, register_no);
			ResultSet rs=ps.executeQuery();
			rs.next();
			rank=rs.getInt(1);
		}
		catch(Exception e){
			return 0;
		}
		return rank;
	}
	public static String getCategory(String register_no){
		String category="No such student exists!!";
		String query="Select category from seatallocationsystem.student where regno=?";
		try{
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, register_no);
			ResultSet rs=ps.executeQuery();
			rs.next();
			category=rs.getString(1);
		}
		catch(Exception e){
			return "No such student exists!!";
		}
		return category;
	}
	public static String getEmailid(String register_no){
		String email="No such student exists!!";
		String query="Select emailid from seatallocationsystem.student where regno=?";
		try{
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, register_no);
			ResultSet rs=ps.executeQuery();
			rs.next();
			email=rs.getString(1);
		}
		catch(Exception e){
			return "No such student exists!!";
		}
		return email;
	}
}
