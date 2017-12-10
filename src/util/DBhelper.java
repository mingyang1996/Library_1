package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBhelper {
	private static final String driver="com.mysql.jdbc.Driver";//驱动程序名 
	//URL指向要访问的数据库名shopping
	private static final String url="jdbc:mysql://localhost:3306/library?useUnicode=true&characterEncoding=UTF-8";
	private static final String username="root";
	private static final String password="785210";
	private static Connection conn=null;//Connection主要用于连接数据库
	
	//静态代码块负责加载驱动
	static
	{
		try
		{
			Class.forName(driver);//加载驱动程序 
		}
		catch(Exception ex)
		{
			ex.printStackTrace();//抛出异常时打异常堆栈
		}
	}
	
	//单例模式返回数据库连接对象
	public static Connection getConnection() throws Exception
	{
		if(conn==null)
		{
			conn=DriverManager.getConnection(url, username, password);//连续数据库 
			return conn;
		}
		return conn;
	}
	
	public static void main(String[] args)
	{
		try
		{
			Connection conn=DBhelper.getConnection();
			if(conn!=null)
			{
				System.out.println("数据库连接正常");
			}
			else
			{
				System.out.println("数据库连接异常");			
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
}
