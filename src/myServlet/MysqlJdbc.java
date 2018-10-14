/**
 * 
 */
package myServlet;

/**
 * @author wyp
 *
 */
import java.sql.*;

public class MysqlJdbc
{
	public static void main(String args[])
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver"); 
			// 加载MYSQL JDBC驱动程序
			System.out.println("Success loading Mysql Driver!");
		} catch (Exception e)
		{
			System.out.print("Error loading Mysql Driver!");
			e.printStackTrace();
		}
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs= null;
		try
		{
			String sql = "select * from user";
			connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "用户", "密码");
			// 连接URL为 jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码

			System.out.println("Success connect Mysql server!");
			stmt = connect.createStatement();
			rs = stmt.executeQuery(sql);
			// user 为你表的名称
			while (rs.next())
			{
				System.out.println(rs.getString("name"));
			}
		} catch (Exception e)
		{
			System.out.print("get data error!");
			e.printStackTrace();
		}
		finally{
			try{
				if(rs!=null)
					rs.close();
				if(stmt!=null)
					stmt.close();
				if(connect!=null)
					connect.close();
			}catch(SQLException e){
				System.out.print("error!");
				e.printStackTrace();
			}
			
		}
	}
}
