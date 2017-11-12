package sessionpackage;
import java.util.*;
import java.sql.*;
import java.sql.Date;
import java.io.FileNotFoundException;
import java.io.FileReader;
public class InputPreference{
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
	     int n,c,b;
	     for(int i=1;i<=50;i++){
	         n=rd.nextInt(20)+1;
	         String regno="2017JEE"+i;
	        for(int k=1;k<=n;k++){
	         c=rd.nextInt(6);
	         b=rd.nextInt(3);
	         String cid="10"+c;
	         int bid=b+1;
	         String qu="insert into seatallocationsystem.preferences values(?,?,?,?)";
	         try{
	 			PreparedStatement ps=con.prepareStatement(qu);
	 			ps.setInt(1, k);
	 			ps.setString(2, regno);
	 			ps.setString(3, cid);
	 			ps.setInt(4, bid);
	 			int rs=ps.executeUpdate();  //Do not give query inside executeQuery()
	 		}
	 		catch(Exception e){
	 			e.printStackTrace();
	 		}
	         }
	     }
	}
	
}
