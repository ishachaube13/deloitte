package com.cg.customer.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cg.customer.model.Customer;


@Service("customerService")
public interface CustomerService {
public List<Customer> findAll();
	
	public void save( Customer customer);
	
	public void delete(Customer customer);
	public  Customer findById(Integer id);
}
