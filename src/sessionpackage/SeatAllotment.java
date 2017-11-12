package sessionpackage;
import java.sql.*;
public class SeatAllotment {
	static Connection con=DBMSconection.getCon();
	public static void main(String[] args) {
		String qu="select count(*) from seatallocationsystem.student";
		int n=0;
		try{//delete it later.
    		Class.forName(DatabaseDetails.DRIVER); //Used to load the Driver
    		con=DriverManager.getConnection(DatabaseDetails.URL,DatabaseDetails.USERNAME,DatabaseDetails.PASSWORD);
    	}
    	catch(Exception e){
    		
    	}
		try{
			PreparedStatement ps=con.prepareStatement(qu);
			ResultSet rs=ps.executeQuery();
			rs.next();
			n=rs.getInt(1);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		for(int i=1;i<=n;i++){
			int nop=0;
			String regno ="2017JEE"+i;
			String res="Select category from seatallocationsystem.student where regno=?";
			String cat;
			try{
				PreparedStatement ps=con.prepareStatement(res);
				ps.setString(1,regno );
				ResultSet rs=ps.executeQuery();
				rs.next();
				cat=rs.getString(1);
			}
			catch(Exception e){
				e.printStackTrace();
				cat=" ";
			}
			
			String que="select count(*) from seatallocationsystem.preferences where regno=?";
			try{
				PreparedStatement ps=con.prepareStatement(que);
				ps.setString(1,regno );
				ResultSet rs=ps.executeQuery();
				rs.next();
				nop=rs.getInt(1);
			}
			catch(Exception e){
				e.printStackTrace();
			}
			inner:for(int pref=1;pref<=nop;pref++){
				String details="select * from seatallocationsystem.preferences where regno=? and pno=?";
				String cid;
				int did;
				try{
					PreparedStatement ps=con.prepareStatement(details);
					ps.setString(1,regno );
					ps.setInt(2,pref );
					ResultSet rs=ps.executeQuery();
					rs.next();
					cid=rs.getString(3);
					did=rs.getInt(4);
				}
				catch(Exception e){
					e.printStackTrace();
					did=0;
					cid=" ";
				}
				String qu2="select "+cat+"s from seatallocationsystem.department where dep_id=? and college_id=?";
				int rem=0;
				try{
					PreparedStatement ps=con.prepareStatement(qu2);
					ps.setInt(1,did );
					ps.setString(2,cid );
					ResultSet rs=ps.executeQuery();
					rs.next();
					rem=rs.getInt(1);
					
				}
				catch(Exception e){
					e.printStackTrace();
				}
				if(rem>0){
					String qu3="insert into seatallocationsystem.allocation values(?,?,?)";
					try{
						PreparedStatement ps=con.prepareStatement(qu3);
						ps.setString(1,regno );
						ps.setString(2,cid );
						ps.setInt(3,did );
						ps.executeUpdate();
						
					}
					catch(Exception e){
						e.printStackTrace();
					}
					//Create a trigger in future.!!!!!
					rem--;
					String qu4="update department set "+cat+"s=? where dep_id=? and college_id=?";
					try{
						PreparedStatement ps=con.prepareStatement(qu4);
						ps.setInt(1,rem );
						ps.setInt(2,did );
						ps.setString(3,cid );
						ps.executeUpdate();
						
					}
					catch(Exception e){
						e.printStackTrace();
					}
					break inner;
				}
				else if(rem==0 && cat !="GM"){
					String qu5="select GMs from seatallocationsystem.department where dep_id=? and college_id=?";
					 rem=0;
					try{
						PreparedStatement ps=con.prepareStatement(qu5);
						ps.setInt(1,did );
						ps.setString(2,cid );
						ResultSet rs=ps.executeQuery();
						rs.next();
						rem=rs.getInt(1);
						
					}
					catch(Exception e){
						//e.printStackTrace();
						System.out.println(cid);
						System.out.println(did);
					}
					if(rem>0){
						String qu3="insert into seatallocationsystem.allocation values(?,?,?)";
						try{
							PreparedStatement ps=con.prepareStatement(qu3);
							ps.setString(1,regno );
							ps.setString(2,cid );
							ps.setInt(3,did );
							ps.executeUpdate();
							
						}
						catch(Exception e){
							e.printStackTrace();
						}
						//Create a trigger in future.!!!!!
						rem--;
						String qu4="update department set "+cat+"s=? where dep_id=? and college_id=?";
						try{
							PreparedStatement ps=con.prepareStatement(qu4);
							ps.setInt(1,rem );
							ps.setInt(2,did );
							ps.setString(3,cid );
							ps.executeUpdate();
							
						}
						catch(Exception e){
							e.printStackTrace();
						}
						break inner;
					}
				}
			}
		}

	}

}
