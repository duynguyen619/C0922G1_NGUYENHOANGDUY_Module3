package service.customer;

import model.customer.Customer;

import java.util.List;

public class CustomerService implements ICustomer{
    @Override
    public List<Customer> selectAllCustomer() {
        return null;
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
