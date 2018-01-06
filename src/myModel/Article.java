package myModel;
import java.sql.Date;

/**
 * 文章模型类
 * 
 * @author WYP
 *
 */
public class Article {
	// 文章属性
	private int id;								//id int
	private String title;						//title varchar(45)
	private String content;						//content text()
	private int department_id;				//department_id int
	private Date date;							//date date
	// 构造文章操作方法
	public Article() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Article(int id, String title, String content,int department_id,Date date) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.department_id = getDepartment_id();
		this.date = date;
	}

	@Override
	public String toString() {
		return "公告ID：" + getId() + "\n" + "公告标题：" + getTitle() + "\n" + "公告内容：" + getContent() + "\n" ;
	}
	
	
}
