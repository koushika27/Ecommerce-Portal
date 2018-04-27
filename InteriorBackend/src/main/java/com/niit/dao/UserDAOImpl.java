package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Product;
import com.niit.model.UserDetail;

@Repository("UserDAo")
public class UserDAOImpl implements UserDAO
{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	@Override
	public boolean registerUserDetail(UserDetail user) 
	{
		try
		{
			user.setEnabled(true);
			user.setRole("ROLE_USER");
			sessionFactory.getCurrentSession().save(user);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;
		}
	
	}

	@Transactional
	@Override
	public boolean updateUserDetail(UserDetail user)
	{
		try
		{ 
			sessionFactory.getCurrentSession().update(user);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
            return false;
            }

	}

	@Transactional
	@Override
	public boolean deleteUserDetail(UserDetail user)
	{
		try
		{ 
			sessionFactory.getCurrentSession().delete(user);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
            return false;
            }
	}

	@Transactional
	@Override
	public UserDetail getUserDetail(int userId)
	{
		Session session=sessionFactory.openSession();
		UserDetail user=(UserDetail)session.get(UserDetail.class,userId);
		session.close();
		return user;

	}


	@Override
	public List<UserDetail> listUserDetails()
	{
		Session session=sessionFactory.openSession();
    	Query query=session.createQuery("from UserDetail");
    	List<UserDetail> listUserDetails=(List<UserDetail>)query.list();
    	//session.close();
    	return listUserDetails;
	}
	
	}
