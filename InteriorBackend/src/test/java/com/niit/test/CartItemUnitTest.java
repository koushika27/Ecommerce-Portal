package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CartItemDAO;
import com.niit.model.CartItem;

public class CartItemUnitTest 
{
	static CartItemDAO cartItemDAO;

	@BeforeClass
	public static void executeFirst() 
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		cartItemDAO =(CartItemDAO)context.getBean("cartItemDAO");
	}
	
	@Test
	public void addCartItemTest() 
	{
		CartItem cartItem = new CartItem();
		cartItem.setCartId(1002);
		cartItem.setProductId(3);
		cartItem.setQuantity(1);
		cartItem.setUsername("vicky");
		cartItem.setPaymentStatus("NP");
		cartItem.setSubTotal(1999);
		
		assertTrue("Problem in insertion",cartItemDAO.addCartItem(cartItem));
	}

	
	@Ignore
	@Test
	public void updateCartItemTest( ) {
		CartItem cartItem = cartItemDAO.getCartItem(1);
		cartItem.setQuantity(1);
		cartItem.setSubTotal(2000);
		assertTrue("Problem in updating", cartItemDAO.updateCartItem(cartItem));
	}
	
	@Ignore
	@Test
	public void deleteCartItemTest() {
		CartItem cartItem = cartItemDAO.getCartItem(1);
		assertTrue("Problem in deleting the cart item", cartItemDAO.deleteCartItem(cartItem));
	}
	
	
	@Test
	public void listCartItemsTest() 
	{
		List<CartItem> listCartItem = cartItemDAO.getCartItems("vicky");
		
		assertNotNull("Problem in list CartItems",listCartItem);
		System.out.println(listCartItem.size());
		
		for(CartItem cartItem:listCartItem) 
		{
			System.out.println("CartItemId:"+cartItem.getCartItemId());
			System.out.println("CartItem Quantity:"+cartItem.getQuantity());
			System.out.println("CartItem PaymentStatus:"+cartItem.getPaymentStatus());
		}
	}
}

