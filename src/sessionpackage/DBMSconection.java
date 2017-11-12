package sessionpackage;
import java.sql.*;
public class DBMSconection {
	public static Connection con;
	public static void establish_connection(){
		try{
    		Class.forName(DatabaseDetails.DRIVER); //Used to load the Driver
    		con=DriverManager.getConnection(DatabaseDetails.URL,DatabaseDetails.USERNAME,DatabaseDetails.PASSWORD);
    	}
    	catch(Exception e){
    		
    	}
	}
	public static Connection getCon() {
		return con;
	}

}
