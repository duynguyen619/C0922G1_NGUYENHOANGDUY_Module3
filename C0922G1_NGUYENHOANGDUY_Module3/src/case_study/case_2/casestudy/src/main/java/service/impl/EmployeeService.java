package service.impl;


import model.employee.Employee;
import repositoty.IEmployeeRepository;
import repositoty.impl.EmployeeRepository;

import java.sql.SQLException;
import java.util.List;

public class EmployeeService implements IEmployeeRepository {
    IEmployeeRepository employeeRepository = new EmployeeRepository();

    @Override
    public List<Employee> showList() {
        return employeeRepository.showList();
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
