package repositoty.customer;

import model.customer.Customer;

import java.util.List;

public interface ICustomerRepositoty {
    List<Customer> selectAllCustomer();
    Customer selectCustomerById(int id);
    boolean deleteCustomer(int id);
    List<Customer> selectCustomerByCondition(String name,String address, String email);
}
