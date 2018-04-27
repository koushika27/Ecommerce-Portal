package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

public class SupplierController 
{
	@Autowired
	SupplierDAO supplierDAO;

	
	
	@RequestMapping(value="/viewSupplierAddPage")
	public String viewAddSupplier(Model m) {
		Supplier sup = new Supplier();
		m.addAttribute("supplier", sup);
		return "addSupplier";
	}
	
	@RequestMapping(value="/addSupplier", method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier, Model m) {
		supplierDAO.addSupplier(supplier);
		List<Supplier> supplierList = supplierDAO.getSuppliers();
		m.addAttribute("supplierList", supplierList);
		return "viewSupplierDetails";
	}
	
	@RequestMapping(value="/viewSupplierDetails")
	public String viewSupplierList(Model m) {
		List<Supplier> supplierList = supplierDAO.getSuppliers();
		m.addAttribute("supplierList", supplierList);
		return "viewSupplierDetails";
	}
}