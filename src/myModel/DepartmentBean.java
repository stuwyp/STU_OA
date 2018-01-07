package myModel;

public class DepartmentBean {

    public static String showDepartment(int department) {
        switch (department) {
            case 0 :
                return "无归属";
            case 1 :
                return "教务处";
            case 2 :
                return "计算机系";
            case 3 :
                return "体育部";
            case 4 :
                return "招生办";
            case 5 :
                return "咸鱼部";
            default:
                return "";
        }
    }

}
