package com.niit.test;

import static org.junit.Assert.assertTrue;

import java.util.Date;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.OrderDetailDAO;
import com.niit.model.OrderDetail;

public class OrderDetailUnitTest 
{
	
	static OrderDetailDAO orderDetailDAO;
	
	@BeforeClass	
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		orderDetailDAO = (OrderDetailDAO)context.getBean("orderDetailDAO");
	}
	
	@Test
	public void addOrderDetailTest()
	{
		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setCartId(1005);		
		orderDetail.setUsername("vicky");
		orderDetail.setShippingAddress("Coimbatore");
		orderDetail.setTransactiontype("COD");
		orderDetail.setTotalAmount(10000.0f);
		orderDetail.setOrderDate(new Date());		
		
		assertTrue("Problem in Inserting of orderDetail",orderDetailDAO.confirmOrderDetail(orderDetail));
		
	}
	

}
