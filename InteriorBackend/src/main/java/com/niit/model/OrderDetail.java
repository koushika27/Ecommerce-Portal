package com.niit.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class OrderDetail
{
	@Id
	@GeneratedValue
	private int orderId;
	int cartId;
	
	String username;
	Date orderDate;
	float totalAmount;
	String shippingAddress;
	String transactiontype;
	
	public int getOrderId()
	{
		return orderId;
	}
	public void setOrderId(int orderId)
	{
		this.orderId = orderId;
	}
	
	public int getCartId()
	{
		return cartId;
	}
	public void setCartId(int cartId) 
	{
		this.cartId = cartId;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public Date getOrderDate() 
	{
		return orderDate;
	}
	public void setOrderDate(Date orderDate)
	{
		this.orderDate = orderDate;
	}
	public float getTotalAmount()
	{
		return totalAmount;
	}
	public void setTotalAmount(float totalAmount) 
	{
		this.totalAmount = totalAmount;
	}
	public String getShippingAddress()
	{
		return shippingAddress;
	}
	public void setShippingAddress(String shippingAddress) 
	{
		this.shippingAddress = shippingAddress;
	}
	public String getTransactiontype()
	{
		return transactiontype;
	}
	public void setTransactiontype(String transactiontype) 
	{
		this.transactiontype = transactiontype;
	}
	

}
