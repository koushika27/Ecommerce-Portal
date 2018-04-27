package com.niit.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CartItemDAO;
import com.niit.dao.OrderDetailDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;
import com.niit.model.OrderDetail;
import com.niit.model.Product;

@Controller
public class OrderDetailController
{
	@Autowired
	CartItemDAO cartItemDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	
	
	@RequestMapping("/ConfirmOrder")
	public String confirmOrder(HttpSession session, Model m)
	{
		OrderDetail order = new OrderDetail();
		m.addAttribute("order", order);
		
		String username = (String)session.getAttribute("username");
		
		List<CartItem> listCartItems = cartItemDAO.getCartItems(username);
		m.addAttribute("cartList", listCartItems);
		m.addAttribute("grandTotal",this.grandTotal(listCartItems));
		return "orderConfirmPage";
	}
	
	@RequestMapping("/thankYou")
	public String addOrderDetail(@ModelAttribute("order")OrderDetail orderDetail, HttpSession session, Model m, Object orderId)
	{
		String username = (String)session.getAttribute("username");
		
		List<CartItem> listCartItems = cartItemDAO.getCartItems(username);
		orderDetail.setCartId(listCartItems.get(0).getCartId());		
		orderDetail.setUsername(username);
		orderDetail.setOrderDate(new Date());
		
		for(CartItem cartItem:listCartItems)
		{
			cartItem.setPaymentStatus("NP");
			cartItemDAO.updateCartItem(cartItem);
			
			}
		
		m.addAttribute("shippingAddress", orderDetail.getShippingAddress());
		return "thankYou";
	}
	
		
	
	public int grandTotal(List<CartItem> listCartItems)
	{
		int grandTotal=0;
		for(CartItem cartItem:listCartItems)
		{
			grandTotal=grandTotal+cartItem.getQuantity()*(productDAO.getProduct(cartItem.getProductId()).getPrice());
			
		}
		
		return grandTotal;
	}
	
}
