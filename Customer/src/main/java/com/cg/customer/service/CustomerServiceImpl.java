package com.cg.customer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.customer.dao.CustomerDao;
import com.cg.customer.model.Customer;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;

	@Override
	public List<Customer> findAll() {
		List<Customer> customerslist = customerDao.findAll();
		return customerslist;
	}

	@Override
	public void save(Customer customer) {
		customerDao.save(customer);

	}

	@Override
	public void delete(Customer customer) {
		customerDao.delete(customer);
	}

	@Override
	public Customer findById(Integer id) {

		Customer customer=customerDao.findById(id).get();
		return customer;
		
	}
}
