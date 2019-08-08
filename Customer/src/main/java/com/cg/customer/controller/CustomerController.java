package com.cg.customer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cg.customer.model.Customer;
import com.cg.customer.service.CustomerService;

@RestController
@RequestMapping("/customers")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;

	@GetMapping("/")
	public ModelAndView findAll() {
		List<Customer> customersList = customerService.findAll();
		ModelAndView modelAndView = new ModelAndView("listcustomers");
		modelAndView.addObject("CUSTOMERSLIST", customersList);
		return modelAndView;
	}
	@PostMapping("/checkuser")
	public ModelAndView requestLogin(@RequestParam String user, @RequestParam String password) {
		ModelAndView modelAndView;
		if ((user.equals("user")) && (password.equals("password"))) {
			modelAndView = new ModelAndView("home");
		} else {
			modelAndView = new ModelAndView("index");
		}
		return modelAndView;
	}


	@PostMapping("/save")
	public ModelAndView save(@RequestParam Integer id, @RequestParam String name, @RequestParam String location,@RequestParam String domain) 
	{
		Customer customer=new Customer();
		customer.setId(id);
		customer.setName(name);
		customer.setLocation(location);
		customer.setDomain(domain);
		
		customerService.save(customer);
		List<Customer> customersList = customerService.findAll();
		ModelAndView modelAndView = new ModelAndView("listcustomers");
		modelAndView.addObject("CUSTOMERSLIST", customersList);
		return modelAndView;
	}
	@PostMapping("/update")
	public ModelAndView modify(@RequestParam Integer id) {
		Customer customer = customerService.findById(id);
		ModelAndView modelAndView = new ModelAndView("updatecustomer");
		modelAndView.addObject("CUSTOMER", customer);
		return modelAndView;
	}

	@GetMapping("/delete")
	public ModelAndView delete(@RequestParam Integer id) {

		Customer customer = customerService.findById(id);
		customerService.delete(customer);
		List<Customer> customersList = customerService.findAll();
		ModelAndView modelAndView = new ModelAndView("listcustomers");
		modelAndView.addObject("CUSTOMERSLIST", customersList);
		return modelAndView;
	}
	@PostMapping("/retrieve")
	public ModelAndView retrieve(@RequestParam Integer id) {
		Customer customer = customerService.findById(id);
		ModelAndView modelAndView = new ModelAndView("customerinfo");
		modelAndView.addObject("CUSTOMER", customer);
		return modelAndView;
	}

}
