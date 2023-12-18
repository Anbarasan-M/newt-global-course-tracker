import java.sql.*;
public class JDBCConnection {
    public static void main(String[] args) throws Exception{
        try{
            String url = "jdbc:postgresql://localhost:5432/sample";
            String userName = "postgres";
            String password = "1234";
            String SQLQuery = "insert into student values(5, 'john', 48)" ;
//            String SQLQuery = "update student set sname='max' where sid=5" ;
//            String SQLQuery = "delete from student where sid = 5";
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(url, userName, password);
            Statement st = con.createStatement();
            boolean status = st.execute(SQLQuery);
            System.out.println(status);


            con.close();
        }
        catch (Exception e){
            System.out.println("Error in creating connection "+e);
            e.printStackTrace();
        }
    }
}