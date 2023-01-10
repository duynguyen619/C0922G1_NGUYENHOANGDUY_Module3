package service;

import model.customer.Customer;

import java.util.List;

public interface ICustomer {
    List<Customer> selectAllCustomer();
    Customer selectCustomerById(int id);
    boolean deleteCustomer();
    List<Customer> selectCustomerByEdition(String name,String address,String email);
}
