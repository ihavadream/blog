package util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;



public class JdbcUtil {
	private static String driver;
	private static String user;
	private static String url;
	private static String password;
	static{
		 Properties p=new Properties();
		 try {
			p.load(JdbcUtil.class.getClassLoader().getResourceAsStream("db.properties"));
			driver=p.getProperty("driver");
			url=p.getProperty("url");
			user=p.getProperty("user");
			password=p.getProperty("password");
			Class.forName(driver);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("读属性文件失败！",e);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("类找不到！！",e);
		}
	}
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url,user,password);
		
	}
	public static void close(Connection con){
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				throw new RuntimeException("关闭链接失败！",e);
			}
		}
	}

}
