package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletResponse;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpServletResponse;
public class DB {
 /**
  * @param args
  */
 
 private static String url="jdbc:mysql://localhost:3306/data";
 private static String name="root";
 private static String password="h1315487";
 //public static void main(String[] args){}
 
 public String userCheck(String u,String p) throws Exception {
  // TODO Auto-generated method stub
 
  try {
   //鍔犺浇椹卞姩绋嬪簭锛�
   Class.forName("com.mysql.jdbc.Driver");
   //鑾峰緱鏁版嵁搴撹繛鎺ワ紱
   Connection conn=DriverManager.getConnection(url,name,password);
   //閫氳繃鏁版嵁搴撶殑杩炴帴鎿嶄綔鏁版嵁搴擄紝瀹炵幇澧炲垹鏀规煡銆�
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery("select password from usercheck where username='"+u+"';");
   if(rs.next())
   {
    if(rs.getString("password").equals(p)){
    	System.out.println("Log in succeed!");
    	return "1";
    }
    else
    	return "0";
    }
   else{
	   System.out.println("User isn't exist!");
	   return "0";
   }
   
  } catch (ClassNotFoundException e) {
   e.printStackTrace();return "0";
  } catch (SQLException e) {
   e.printStackTrace();return "0";
  }
 
 }


public String pa_insert(String u_name,String p_name,String level,String incl,String incl_no,String incl_date,String material) throws Exception {
	  // TODO Auto-generated method stub
	 
	  try {
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection conn=DriverManager.getConnection(url,name,password);
	   Statement stmt=conn.createStatement();
	   String point="3";
	   int i=stmt.executeUpdate("insert into paper(u_name,p_name,level,including,incl_no,incl_date,material,point) values('"+u_name+"','"+p_name+"',"+level+",'"+incl+"',"+incl_no+",'"+incl_date+"','"+material+"',"+point+");");
	   return "1";
	  } catch (ClassNotFoundException e) {
	   e.printStackTrace();return "0";
	  } catch (SQLException e) {
	   e.printStackTrace();return "0";
	  }
	 
	 }
	 
	 
	 
	 public ResultSet pa_select(String u_name) throws Exception {
		  // TODO Auto-generated method stub
		 
		  try {
		   Class.forName("com.mysql.jdbc.Driver");
		   Connection conn=DriverManager.getConnection(url,name,password);
		   Statement stmt=conn.createStatement();
		   ResultSet rs=stmt.executeQuery("select * from paper where u_name='"+u_name+"';");
		   return rs;  
		  } catch (ClassNotFoundException e) {
		   e.printStackTrace();return null;
		  } catch (SQLException e) {
		   e.printStackTrace();return null;
		  }
		 
		 }
	 
	 
	 
	 public String pa_delete(int id) throws Exception {
		  // TODO Auto-generated method stub
	
		  try {
		   Class.forName("com.mysql.jdbc.Driver");
		   Connection conn=DriverManager.getConnection(url,name,password);
		   Statement stmt=conn.createStatement();
		   int i=stmt.executeUpdate("delete from paper where id="+id+";");
		   //int j=stmt.executeUpdate("alter table paper AUTO_INCREMENT="+id+";");
		   return "1";
		  } catch (ClassNotFoundException e) {
		   e.printStackTrace();return "0";
		  } catch (SQLException e) {
		   e.printStackTrace();return "0";
		  }
		 
		 }



}
