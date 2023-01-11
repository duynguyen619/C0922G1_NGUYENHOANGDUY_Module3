package service;

import model.customer.Customer;

import java.util.List;

public interface ICustomer {
    public List<Customer> showList();
    public boolean update(Customer customer);
    public boolean delete(int id);
    public boolean add(Customer customer);
    public Customer findById(int id);
}
