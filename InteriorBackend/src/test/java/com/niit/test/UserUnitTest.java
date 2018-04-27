package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.UserDAO;
import com.niit.model.Product;
import com.niit.model.UserDetail;

public class UserUnitTest
{
	static UserDAO userDAO;

	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		System.out.println("DB connected");
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	
	@Ignore
	@Test
	public void registerUserDetailTest()
	{
		UserDetail User=new UserDetail();
		User.setUserName("kousi");
		User.setPassWord("pass@123");
		User.setRole("ROLE_ADMIN");
		User.setEnabled(true);
		User.setCustomerName("koushika");
		User.setMobileNo("7708760322");
		User.setEmailId("koushikav2712");
		User.setAddress("477,anna nagar,coimbatore");
		assertTrue("Problem in UserDetail Insertion",userDAO.registerUserDetail(User));
	}
	
	@Ignore
	@Test
	public void getUserDetailTest() 
	{
		UserDetail user=userDAO.getUserDetail(1);
		System.out.println("userName"+user.getUserName());
		System.out.println("passWord"+user.getPassWord());

	}
	
	@Ignore
	@Test
	public void deleteUserDetailTest()
	{
		UserDetail user=userDAO.getUserDetail(1);
		assertTrue("Problem in Deletion:",userDAO.deleteUserDetail(user));
        
	}
	
	@Ignore
	@Test
	public void updateUserDetailTest()
	{
		UserDetail user=userDAO.getUserDetail(1);
		user.setMobileNo("7708760322");
		assertTrue("Problem in updation:",userDAO.updateUserDetail(user));
        
	}
	
	@Test
	public void listUserDetailTest()
	{
		 List<UserDetail> listuser=userDAO.listUserDetails();
		 System.out.print(listuser.size());
		 for(UserDetail user:listuser)
		 {
			 System.out.print(user.getUserName()+":::");
			 System.out.print(user.getPassWord()+":::");
			 System.out.println(user.getRole());
		 }
		 assertNotNull("no User",listuser);
		 
	
		 
		}
	}

    
	
