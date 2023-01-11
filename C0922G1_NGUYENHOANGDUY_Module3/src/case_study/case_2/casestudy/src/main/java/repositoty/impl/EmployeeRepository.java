package repositoty.impl;

import model.employee.*;
import repositoty.BaseRepository;
import repositoty.IEmployeeRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    private static final String SELECT_ALL_EMPLOYEE ="select * from employee";
    @Override
    public List<Employee> showList() {
        Connection connection = BaseRepository.getConnectDB();
        List<Employee> employeeList = new ArrayList<>();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id  = resultSet.getInt("id");
                String name=  resultSet.getString("name");
                String dateOfBirth =resultSet.getString("date_of_birth");
                String idCard = resultSet.getString("id_card");
                Double salary = resultSet.getDouble("salary");
                String phoneNumber = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address =resultSet.getString("address");
                Employee employee = new Employee(id,name,dateOfBirth,idCard,salary,phoneNumber,email,address);
                employeeList.add(employee);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }

    @Override
    public boolean update(Employee employee) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public boolean add(Employee employee) throws SQLException {
        return false;
    }

    @Override
    public Employee findById(int id) {
        return null;
    }
}
