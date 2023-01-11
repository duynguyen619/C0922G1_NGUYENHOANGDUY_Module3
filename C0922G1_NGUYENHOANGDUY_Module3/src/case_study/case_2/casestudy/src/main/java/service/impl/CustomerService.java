package service.impl;

import model.customer.Customer;
import repositoty.ICustomerRepositoty;
import repositoty.impl.CustomerRepository;
import service.ICustomer;

import java.util.List;

public class CustomerService implements ICustomer {
    CustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> showList() {
        return customerRepository.showList();
    }

    @Override
    public boolean update(Customer customer) {
        return customerRepository.update(customer);
    }

    @Override
    public boolean delete(int id) {
        return customerRepository.delete(id);
    }

    @Override
    public boolean add(Customer customer) {
        return customerRepository.add(customer);
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }
}
