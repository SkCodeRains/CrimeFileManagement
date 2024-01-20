package mybeans;
import java.sql.*;

import javax.swing.JOptionPane;

public class DbConnection
{
	private static Connection con;

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crimeFileDB", "rains", "test");
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, e, "Warrning", JOptionPane.WARNING_MESSAGE);
		}
		return con;
	}
}
