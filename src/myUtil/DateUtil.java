package myUtil;

import java.text.SimpleDateFormat;
import java.sql.Date;

public class DateUtil {

	public static String formatDate(Date date,String format){
		String result="";
		SimpleDateFormat sdf=new SimpleDateFormat(format);
		if(date!=null){
			result=sdf.format(date);
		}
		return result;
	}
	
	
	public static Date formatString(String str,String format) throws Exception{
		if(StringUtil.isEmpty(str)){
			return null;
		}
		Date date = null;
		try{
		SimpleDateFormat sdf=new SimpleDateFormat(format);
		java.util.Date d = null;
		
		
		
			d = sdf.parse(str);
			date = new Date(d.getTime());
		}catch(Exception e){
			e.printStackTrace();  
		}
		return date;
	}
	
	public static String getCurrentDateStr()throws Exception{
		java.util.Date date=new java.util.Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}
	
}
