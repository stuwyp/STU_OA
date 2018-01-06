package myDAO;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import myModel.Article;
import myModel.UserBean;
import myUtil.DateUtil;
import myUtil.DbUtil;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    /**
     * 获取所有用户
     */

    public List<UserBean> getAllUsers() {
        // 建立集合
        List<UserBean> list = new ArrayList<>();
        UserBean user = null;

        // 建立连接、会话、结果集
        Connection connection = DbUtil.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Date date = null;

        try {
            // 连接到数据库，并开启会话
            statement = (PreparedStatement) connection
                    .prepareStatement("select * from user order by priority");
            // 执行会话，并建立结果集
            resultSet = statement.executeQuery();
            // 遍历结果集，取出数据库里面的信息，并组成实体类
            while (resultSet.next()) {
                int priority = resultSet.getInt("priority");
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                int department_id = resultSet.getInt("department_id");

                // 遍历一组数据就new一个对象出来。
                user = new UserBean(username, password, department_id, priority);
                // 将获取到的实体类信息存入集合
                list.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(connection, statement, resultSet);
        }
        return list;
    }

    /**
     * 根据用户名获取单个用户
     */
    public UserBean getUserByUsername(String username) {
        // 建立对象
        UserBean user = new UserBean();

        // 建立连接、会话、结果集
        Connection connection = DbUtil.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            // 连接到数据库，并开启会话
            statement = (PreparedStatement) connection
                    .prepareStatement("select * from user where username=?");
            statement.setString(1, username);
            // 执行会话，并建立结果集
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                user.setPriority(resultSet.getInt("priority"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setDepartment_id(resultSet.getInt("department_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(connection, statement, resultSet);
        }
        return user;
    }
}
