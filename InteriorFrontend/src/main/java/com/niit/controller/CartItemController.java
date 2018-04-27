package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartItemDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;
import com.niit.model.Product;

@Controller
public class CartItemController 
{
	@Autowired
	CartItemDAO cartItemDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/viewCart")
	public String showCartPage(Model m, HttpSession session)
	{
		String username = (String)session.getAttribute("username");
		List<CartItem> cartList = cartItemDAO.getCartItems(username);		
		m.addAttribute("cartList",cartList);
		return "cart";
	}

	
	@RequestMapping("/addToCart/{productId}")
	public String addCartItem(@PathVariable("productId")int productId,@RequestParam("quantity")int quantity,Model m,HttpSession session)
	{
		CartItem cartItem=new CartItem();
		Product product=productDAO.getProduct(productId);
		
		String username = (String)session.getAttribute("username");
		
		cartItem.setPaymentStatus("NP");
		cartItem.setProductId(productId);
		cartItem.setQuantity(quantity);
		cartItem.setUsername(username);
		cartItem.setSubTotal(quantity*product.getPrice());
		cartItem.setCartId(1001);
		
		cartItemDAO.addCartItem(cartItem);

		List<CartItem> listCartItems=cartItemDAO.getCartItems(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandTotal",this.grandTotal(listCartItems));

		
		return "cart";
	}
	
	@RequestMapping("/editCart/{cartItemId}")
	public String editCartItems(@PathVariable("cartItemId")int cartItemId,@RequestParam("quantity")int quantity,Model m, HttpSession session)
	{
		CartItem cartItem = cartItemDAO.getCartItem(cartItemId);
		Product product=productDAO.getProduct(cartItem.getProductId());
		cartItem.setQuantity(quantity);
		cartItem.setSubTotal(quantity*product.getPrice());
		
		cartItemDAO.updateCartItem(cartItem);
		
		String username = (String)session.getAttribute("username");
		
		List<CartItem> listCartItems=cartItemDAO.getCartItems(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandTotal",this.grandTotal(listCartItems));
		
		return "cart";
		
	}
	
	@RequestMapping("/deleteCart/{cartItemId}")
	public String deleteCartItems(@PathVariable("cartItemId")int cartItemId,Model m, HttpSession session)
	{
		CartItem cartItem = cartItemDAO.getCartItem(cartItemId);
		cartItemDAO.deleteCartItem(cartItem);
		
		
		
		String username = (String)session.getAttribute("username");

		List<CartItem> listCartItems=cartItemDAO.getCartItems(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandTotal",this.grandTotal(listCartItems));
		
		
		return "cart";
		
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
