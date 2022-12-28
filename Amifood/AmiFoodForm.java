
import java.sql.Connection;
import java.sql.DriverManager;
public class AmiFoodForm {
   public static void main(String[]args){
      Connection con = null;
      try {
         con = DriverManager.
         getConnection("jdbc:mysql://localhost:3306/amifood?useSSL=false", "root", "day6myday");
         System.out.println("Connection is successful !!!!!");
      } catch(Exception e) {
         e.printStackTrace();
      }
   }
}

/*  import java.sql.*;

        public class AmiFoodForm {
           static final String DB_URL = "jdbc:mysql://localhost:3306/amifood";
           static final String USER = "root";
           static final String PASS = "day6myday";
           static final String QUERY = "SELECT * FROM Food_item";
        
           public static void main(String[] args) {
              // Open a connection
              
              try(Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
                 Statement stmt = conn.createStatement();
                 ResultSet rs = stmt.executeQuery(QUERY);) {
                 // Extract data from result set
                 while (rs.next()) {
                    // Retrieve by column name
                    System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getFloat(3)+"  "+rs.getString(4));  
                 }
              } catch (SQLException e) {
                 e.printStackTrace();
              } 
           }
        } */
      

        /*import java.sql.*;
public class AmiFoodForm
{
public static void main( String[] args) throws SQLException {
    try{  
       // Class.forName("com.mysql");  
        Connection con= DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/amifood","root","day6myday");  

        Statement stmt=con.createStatement();  
        ResultSet rs=stmt.executeQuery("select * from Food_item");  
        while(rs.next())  
        System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getFloat(3)+"  "+rs.getString(4));  
        con.close();  
        }catch(Exception e){ System.out.println(e);}  
        }  
        }   */
