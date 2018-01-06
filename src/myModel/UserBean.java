package myModel;

public class UserBean {
    private String username;        //用户名 varchar(45) 主键 不允许有相同用户名
    private String password;        //密码   varchar(45) Binary 区分大小写
    private int department_id;              //部门id，默认0为无部门
    private int priority;           //优先(权限)级别，数字越大权限越大。
                                    //1是普通用户，10是管理员用户。

    public UserBean() {}

    public UserBean(String username, String password, int priority, int department_id) {
        this.username = username;
        this.password = password;
        this.priority = priority;
        this.department_id = department_id;
    }

    public int getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(int department_id) {
        this.department_id = department_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }
}
