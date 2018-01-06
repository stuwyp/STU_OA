package myModel;

/**
 * 部门模型类
 *
 * @author WYP
 *
 */
public class DepartmentBean {

    // 部门属性
    private int id;								//id int
    private String name;                        //name var(255)

    public DepartmentBean(){

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
