package repositoty.customer.impl;


import model.customer.Customer;
import repositoty.customer.ICustomerRepositoty;

import java.util.List;

public class CustomerRepository implements ICustomerRepositoty {

    @Override
    public List<Customer> selectAllCustomer() {
        return null;
    }

    @Override
    public Customer selectCustomerById(int id) {
        return null;
    }

    @Override
    public boolean deleteCustomer(int id) {
        return false;
    }

    @Override
    public List<Customer> selectCustomerByCondition(String name, String address, String email) {
        return null;
    }
}
