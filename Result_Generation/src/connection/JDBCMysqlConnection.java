package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCMysqlConnection {

	public static JDBCMysqlConnection instance = new JDBCMysqlConnection();
	public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	public static final String URL_STRING = "jdbc:mysql://localhost:3306/Result_generation";
	public static final String USER = "root";
	public static final String PASSWORD = "Creative123#";
	
	private JDBCMysqlConnection()
	{
		try {
			Class.forName(DRIVER_CLASS);
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
	}
	
	private Connection createConnection()
	{
		Connection connection = null;
		try {
			connection = DriverManager.getConnection(URL_STRING, USER, PASSWORD);
		}catch(SQLException e){
			System.out.println("ERROR:Unable to Connect to Database");
		}
		
		return connection;
	}
	
	public static Connection getConnection()
	{
		return instance.createConnection();
	}
}
