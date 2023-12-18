import java.sql.*;
public class JDBCConnection {
    public static void main(String[] args) throws Exception{
        try{
            String url = "jdbc:postgresql://localhost:5432/sample";
            String userName = "postgres";
            String password = "1234";
            String SQLQuery = "select * from student";
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(url, userName, password);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(SQLQuery);
//            rs.next();
//            String name = rs.getString("sname");
//            System.out.println("Name of the student " + name);

            while(rs.next()){
                System.out.println(rs.getInt(1) + " " + rs.getString(2)+ " " +rs.getInt(3));
            }
            con.close();
        }
        catch (Exception e){
            System.out.println("Error in creating connection "+e);
            e.printStackTrace();
        }
    }
}