package in.dataBase;

import java.sql.Connection;
import java.sql.DriverManager;

public class dataBaseConnection {

	public static Connection takeConnection() {
		Connection con = null;

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_db?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;

	}

}

