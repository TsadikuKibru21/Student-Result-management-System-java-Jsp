
import java.sql.*;

public class LoginDao {

    public static boolean validate(String name, String pass) {
        boolean status = false;
        try {

            DBConnection dbcon = new DBConnection();
            Connection con = dbcon.connMethod();
            PreparedStatement ps = con.prepareStatement("select * from student1 where name=? and password=?");
            ps.setString(1, name);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            status = rs.next();

        }catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
}
