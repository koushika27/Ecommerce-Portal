package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.CartItem;

@Repository("cartDAO")
public class CartItemDAOImpl implements CartItemDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
    @Transactional
	@Override
	public boolean addCartItem(CartItem cartItem)
	{
    	try 
    	{
    		sessionFactory.getCurrentSession().save(cartItem);
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
	public boolean updateCartItem(CartItem cartItem)
	{
		try
		{
			sessionFactory.getCurrentSession().update(cartItem);
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
	public boolean deleteCartItem(CartItem cartItem) 
	{
    	try
    	{
			sessionFactory.getCurrentSession().delete(cartItem);
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
	public CartItem getCartItem(int cartItemId)
	{
    	try
    	{
			return (CartItem) sessionFactory.getCurrentSession().get(CartItem.class, cartItemId);
		}
		catch(Exception e)
    	{
			System.out.println("Exception Arised:"+e);
			return null;
		}
	}

    
	@Override
	public List<CartItem> getCartItems(String username) 
	{
    	try 
    	{
    		Session session=sessionFactory.openSession();
    		Query query=session.createQuery("From CartItem Where username=:username and paymentStatus='NP'");
    		query.setParameter("username", username);
    		List<CartItem> listCartItems=query.list();
    		return listCartItems;
    	}
    	catch(Exception e) 
    	{
    		System.out.println("Exception Arised:"+e);
			return null;
		
    	}
	}

}
