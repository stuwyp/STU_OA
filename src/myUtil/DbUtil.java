package myUtil;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import myUtil.PropertiesUtil;

/**
 * 数据库连接类
 * 
 * @author WYP
 *
 */
public class DbUtil
{
	/**
	 * 定义属性
	 */
	static Connection connection = null; // 定义连接常量
	static PreparedStatement statement = null; // 定义会话变量
	static ResultSet resultSet = null; // 定义结果集变量
//	private final static String URL = "jdbc:mysql://localhost:3306/mynews?useSSL=false"; // 定义连接常量,news
//																						// 是要连接的数据库名称
//	private final static String UESR_NAME = "root"; // 定义用户名常量
//	private final static String PASSWORD = "307619"; // 定义密码常量

	/**
	 * 获取连接
	 */
	public static Connection getConnection()
	{
		try
		{
//			Class.forName("com.mysql.jdbc.Driver");// 加载MySQL jdbc驱动程序
//			connection = (Connection) DriverManager.getConnection(URL, UESR_NAME, PASSWORD); // 获取连接
			Class.forName(PropertiesUtil.getValue("jdbcName"));
			connection=(Connection) DriverManager.getConnection(PropertiesUtil.getValue("dbUrl"), PropertiesUtil.getValue("dbUserName"), PropertiesUtil.getValue("dbPassword"));
		} catch (Exception e)
		{
			System.out.println("加载驱动失败！");
			e.printStackTrace();
		}
		return connection; // 返回连接
	}

	/**
	 * 关闭连接
	 */
	public static void close(Connection connection, PreparedStatement statement, ResultSet resultSet)
	{
		// 先关闭集
		if (resultSet != null)
		{
			try
			{
				resultSet.close();
			} catch (Exception e)
			{
				e.printStackTrace();
			}
		}
		// 再关闭会话
		if (statement != null)
		{
			try
			{
				statement.close();
			} catch (Exception e)
			{
				e.printStackTrace();
			}
		}
		// 最后关闭连接，关闭的顺序不可以更换
		if (connection != null)
		{
			try
			{
				connection.close();
			} catch (Exception e)
			{
				e.printStackTrace();
			}
		}
	}
	public void close(Connection conn) throws SQLException{
		if (conn != null)
		{
			try
			{
				conn.close();
			} catch (Exception e)
			{
				e.printStackTrace();
			}
		}
	}
}
