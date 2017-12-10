package com.dao;

import java.util.ArrayList;

import com.po.Users;

import entity.Items;
import entity.Reader;

	

import dao.ItemsDAO;

	

//用户的业务逻辑类
public class UsersDAO {
	
	public boolean usersLogin(Users u)
	{
		//String password="";

		ItemsDAO itemsDao = new ItemsDAO();
		String name = itemsDao.getpassword(u.getUsername());
		System.out.println(name);

		if("admin".equals(u.getUsername())&&"123".equals(u.getPassword()))
		{
			return true;
		}
		else if(name.equals(u.getPassword()))
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	//private Object getpassword(String username) {
		// TODO Auto-generated method stub
		//return null;
	//}
}
