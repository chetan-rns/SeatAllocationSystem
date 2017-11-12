package sessionpackage;
import java.sql.*;
 /*
  * 1.import the package -->java.sql
  * 2.load and register the driver -->com.mysql.Driver
  * 3.create a connection
  * 4.create statements
  * 5.execute the query
  * 6.process the results
  * 7.close the connection
  */
public class JDBCsample {

	public static void main(String[] args) throws Exception{
		String url,uname,pass;
		Class.forName("com.mysql.jdbc.Driver"); //Used to load the Driver
		url="jdbc:msql://localhost:3306/abc";
		uname="root";
		pass="root";
		Connection con=DriverManager.getConnection(url,uname,pass);
		String query="select name from teacher where id=10";
		//getConnection() will give instance of connection
		Statement st=con.createStatement();
		ResultSet rs =st.executeQuery(query);
		rs.next();
		String name=rs.getString(1);
		System.out.println(name);
		st.close();
		con.close();
		
	}

}

