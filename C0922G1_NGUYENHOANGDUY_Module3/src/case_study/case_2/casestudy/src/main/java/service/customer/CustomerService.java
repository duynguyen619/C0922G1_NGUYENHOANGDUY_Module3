package service.customer;

import model.customer.Customer;
import repositoty.customer.ICustomerRepositoty;
import repositoty.customer.impl.CustomerRepository;

import java.util.List;

public class CustomerService implements ICustomer{
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
