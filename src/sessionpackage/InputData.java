package sessionpackage;
import java.util.*;
import java.sql.*;
import java.sql.Date;
import java.io.FileNotFoundException;
import java.io.FileReader;
public class InputData{
	static Connection con;
	public static void main(String args[]) throws FileNotFoundException{
		try{
			Class.forName(DatabaseDetails.DRIVER); //Used to load the Driver
			con=DriverManager.getConnection(DatabaseDetails.URL,DatabaseDetails.USERNAME,DatabaseDetails.PASSWORD);
		}
		catch(Exception e){
			
		}
	    
	     FileReader x=new FileReader("C:\\Users\\Chethan\\workspace\\SeatAllocationSystem\\src\\sessionpackage\\names.txt");
	     FileReader y=new FileReader("C:\\Users\\Chethan\\workspace\\SeatAllocationSystem\\src\\sessionpackage\\Parent.txt");
	     FileReader z=new FileReader("C:\\Users\\Chethan\\workspace\\SeatAllocationSystem\\src\\sessionpackage\\PUCollegeList.txt");
	     Scanner Name=new Scanner(x);
	     Scanner pName=new Scanner(y);
	     Scanner coll=new Scanner(z);
	     int t1,t2,rank,phone;
	     String catagory[]=new String[4];
	     catagory[0]="GM";
	     catagory[1]="OBC";
	     catagory[2]="SC";
	     catagory[3]="ST";
	     for(int i=1;i<=50;i++){
	         t1=Name.nextInt();
	         t2=pName.nextInt();
	         String n,p,regno,collName,qu,email,cat;
	         String dob;
	         n=Name.nextLine();
	         p=pName.nextLine();
	         rank=i;
	         regno="2017JEE"+i;
	         collName=coll.nextLine();
	         phone=1234500+i;
	         email=n+"@gmail.com";
	         cat=catagory[(i%4)];
	         dob="200"+(i%2)+"/"+((i%11)+1)+"/"+((i%30)+1);
	         qu="insert into seatallocationsystem.student values(?,?,?,?,?,?,?)";
	         try{
	 			PreparedStatement ps=con.prepareStatement(qu);
	 			ps.setString(1, n);
	 			ps.setString(2, p);
	 			ps.setString(3, dob);
	 			ps.setString(4, regno);
	 			ps.setInt(5, rank);
	 			ps.setString(6, cat);
	 			ps.setString(7, email);
	 			int rs=ps.executeUpdate();  //Do not give query inside executeQuery()
	 		}
	 		catch(Exception e){
	 			e.printStackTrace();
	 		}

	     }
	     Name.close();
	     pName.close();
	     coll.close();
	}
	
}
