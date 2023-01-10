package service.impl;

import model.customer.Customer;
import repositoty.ICustomerRepositoty;
import repositoty.impl.CustomerRepository;
import service.ICustomer;

import java.util.List;

public class CustomerService implements ICustomer {
    ICustomerRepositoty customerRepositoty = new CustomerRepository();
    @Override
    public List<Customer> selectAllCustomer() {
        return customerRepositoty.selectAllCustomer();
    }

    @Override
    public Customer selectCustomerById(int id) {
        return null;
    }

    @Override
    public boolean deleteCustomer() {
        return false;
    }

    @Override
    public List<Customer> selectCustomerByEdition(String name, String address, String email) {
        return null;
    }
}
