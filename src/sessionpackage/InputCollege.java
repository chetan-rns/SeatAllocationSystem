package sessionpackage;
import java.util.*;
import java.sql.*;
import java.sql.Date;
import java.io.FileNotFoundException;
import java.io.FileReader;
public class InputCollege{
	static Connection con;
	public static void main(String args[]) throws FileNotFoundException{
		try{
			Class.forName(DatabaseDetails.DRIVER); //Used to load the Driver
			con=DriverManager.getConnection(DatabaseDetails.URL,DatabaseDetails.USERNAME,DatabaseDetails.PASSWORD);
		}
		catch(Exception e){
			
		}
		Random rd=new Random();
	    
	     //FileReader coll=new FileReader("C:\\Users\\Chethan\\workspace\\SeatAllocationSystem\\src\\sessionpackage\\college.txt");
	     //Scanner x=new Scanner(coll);
	     int p,c,m,t,rank;
	     for(int i=1;i<=50;i++){
	         p=rd.nextInt(100);
	         c=rd.nextInt(100);
	         m=rd.nextInt(100);
	         t=p+c+m;
	         rank=i;
	         String regno="2017JEE"+i;
	         String qu="insert into seatallocationsystem.result values(?,?,?,?,?,?)";
	         try{
	 			PreparedStatement ps=con.prepareStatement(qu);
	 			ps.setString(1, regno);
	 			ps.setInt(2, p);
	 			ps.setInt(3, c);
	 			ps.setInt(4, m);
	 			ps.setInt(5, t);
	 			ps.setInt(6, rank);
	 			int rs=ps.executeUpdate();  //Do not give query inside executeQuery()
	 		}
	 		catch(Exception e){
	 			e.printStackTrace();
	 		}
	          
	     }
	}
	
}
