package repositoty.customer.impl;


import model.customer.Customer;
import model.customer.CustomerType;
import repositoty.BaseRepository;
import repositoty.customer.ICustomerRepositoty;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepositoty {
    private final String SELECT_ALL_CUSTOMER = "select * from customer; ";
    private final String SELECT_CUSTOMER_BY_ID = "select * from customer where customer_id = ?;";
    private final String DELETE_CUSTOMER_BY_ID = "delete from customer where customer_id = ?;";
    private final String UPDATE_CUSTOMER_BY_ID = "update customer set \n"+"customer_name = ?,\n" +
            "date_of_birth =?,\n" +
            "gender = ?, \n" +
            "id_card = ?,\n" +
            "phone_number = ?,\n" +
            "address = ?,\n" +
            "email=?,\n" +
            "customer_type_id =? \n" +
            "where customer_id = ?;";
    private final String INSERT_INTO_CUSTOMER = "insert into `customer`(customer_name,date_of_birth,gender,id_card,phone_number,address,email,customer_type_id) values\n" +
            "\t( ?, ?, ? , ?, ?, ?, ?,?);";
    private final String SELECT_CUSTOMER_BY_CONDITION = "select c.*, ct.customer_type_name from customer as c \n" +
            "join customer_type as ct on c.customer_type_id = ct.customer_type_id \n" +
            "where customer_name like ? and address like ? and email like ?;";
    @Override
    public List<Customer> selectAllCustomer() {
        Connection connection= BaseRepository.getConnectDB();
        List<Customer> customerList =new ArrayList<>();

        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("customer_id");
                int customerTypeId = rs.getInt("customer_type_id");
                String name = rs.getString("customer_name");
                String dateOfBirth = rs.getString("date_of_birth");
                boolean gender = rs.getBoolean("gender");
                String idCard = rs.getString("id_card");
                int phoneNumber = Integer.parseInt(rs.getString("phone_number"));
                String address = rs.getString("address");
                String email = rs.getString("email");
                Customer customer = new Customer(id, customerTypeId, name, dateOfBirth, gender, idCard, phoneNumber, address, email);
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
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
