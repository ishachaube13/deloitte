package com.cg.customer.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cg.customer.model.Customer;


public interface CustomerDao extends JpaRepository<Customer, Integer>{

}
